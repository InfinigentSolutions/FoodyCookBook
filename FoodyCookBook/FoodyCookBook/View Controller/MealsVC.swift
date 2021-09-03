import UIKit

// MARK: - MealsVC

class MealsVC: UIViewController {

    // MARK: Internal

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!

    var meals: Meals?
    var searchedMeals: Meals?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        getMeals()
    }

    internal func getMeals() {
        MealService.getMeals { [weak self] meals in
            self?.meals = meals
            self?.searchedMeals = meals
            self?.tableView.reloadData()
        } failure: { error in
            print(error.debugDescription)
        } network: {}
    }

    // MARK: Private

    private func searchMeals(_ searchText: String) {
        if searchText.isEmpty {
            searchedMeals = meals
            tableView.reloadData()
            return
        }

        let fMeals = meals?.meals?.filter { $0.strMeal?.contains(searchText) ?? false }
        searchedMeals = Meals(meals: fMeals)
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension MealsVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchedMeals?.meals?.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cell: MealCell.self, for: indexPath)
        let meal = searchedMeals?.meals?[indexPath.row]
        cell.configure(meal)
        cell.delegate = self
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let randomVC = R.storyboard.main.randomVC()!
        randomVC.meal = searchedMeals?.meals?[indexPath.row]
        randomVC.isDetailView = true

        let navigationController = UINavigationController(rootViewController: randomVC)

        present(navigationController, animated: true, completion: nil)
    }
}

// MARK: - UISearchBarDelegate

extension MealsVC: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
        searchMeals(searchBar.text ?? "")
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
        searchMeals("")
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchMeals(searchText)
    }
}

// MARK: - MealCellDelegate

extension MealsVC: MealCellDelegate {

    func didTapFavourite(_ cell: MealCell, _ meal: Meal?) {

        if UserDefaults.favouriteMeals != nil {

            var arrMeal = UserDefaults.favouriteMeals ?? []

            if arrMeal.contains(where: { $0.idMeal?.toInt() ?? 0 == meal?.idMeal?.toInt() ?? 0 }) {
                arrMeal.removeAll(where: { $0.idMeal?.toInt() ?? 0 == meal?.idMeal?.toInt() ?? 0 })
                cell.btnFavourite.setImage(UIImage(systemName: "heart"), for: .normal)
            } else {
                arrMeal.append(meal!)
                cell.btnFavourite.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            }

            UserDefaults.favouriteMeals = arrMeal

        } else {

            var arrMeal: [Meal] = []
            arrMeal.append(meal!)
            cell.btnFavourite.setImage(UIImage(systemName: "heart.fill"), for: .normal)

            UserDefaults.favouriteMeals = arrMeal
        }
    }
}
