import UIKit

class FavouritesVC: UIViewController {

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
        let arrMeals = UserDefaults.favouriteMeals ?? []
        meals = Meals(meals: arrMeals)
        searchedMeals = Meals(meals: arrMeals)
        tableView.reloadData()
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

extension FavouritesVC: UITableViewDataSource, UITableViewDelegate {

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
}

// MARK: - UISearchBarDelegate

extension FavouritesVC: UISearchBarDelegate {

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

extension FavouritesVC: MealCellDelegate {

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
