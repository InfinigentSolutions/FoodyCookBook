import Kingfisher
import UIKit

// MARK: - RandomVC

class RandomVC: UIViewController {

    // MARK: Internal

    @IBOutlet var tableView: UITableView!
    
    lazy var closeButton: UIBarButtonItem = {
        let image = UIImage(systemName: "xmark")?.withTintColor(R.color.gray3() ?? .gray).withRenderingMode(.alwaysOriginal)
        return UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(btnClose))
    }()

    var meal: Meal?
    var ingredients: [(ingredient: String, measure: String)] = []
    
    var isDetailView: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        
        if isDetailView {
            navigationItem.title = meal?.idMeal ?? ""
            navigationItem.leftBarButtonItem = closeButton
        } else {
            navigationItem.title = nil
            navigationItem.leftBarButtonItem = nil
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if !isDetailView {
            getRandomMeal()
        } else {
            loadIngredients()
            tableView.reloadData()
        }
    }

    internal func getRandomMeal() {
        MealService.getRandomMeal { [weak self] meals in
            self?.meal = meals.meals?.randomElement()
            self?.loadIngredients()
            self?.tableView.reloadData()
        } failure: { error in
            print(error.debugDescription)
        } network: {}
    }
    
    @IBAction func btnClose() {
        dismiss(animated: true, completion: nil)
    }

    // MARK: Private

    private func loadIngredients() {
        if !(meal?.strIngredient1?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure1?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient1 ?? "", measure: meal?.strMeasure1 ?? ""))
        }
        if !(meal?.strIngredient2?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure2?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient2 ?? "", measure: meal?.strMeasure2 ?? ""))
        }
        if !(meal?.strIngredient3?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure3?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient3 ?? "", measure: meal?.strMeasure3 ?? ""))
        }
        if !(meal?.strIngredient4?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure4?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient4 ?? "", measure: meal?.strMeasure4 ?? ""))
        }
        if !(meal?.strIngredient5?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure5?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient5 ?? "", measure: meal?.strMeasure5 ?? ""))
        }
        if !(meal?.strIngredient6?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure6?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient6 ?? "", measure: meal?.strMeasure6 ?? ""))
        }
        if !(meal?.strIngredient7?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure7?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient7 ?? "", measure: meal?.strMeasure7 ?? ""))
        }
        if !(meal?.strIngredient8?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure8?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient8 ?? "", measure: meal?.strMeasure8 ?? ""))
        }
        if !(meal?.strIngredient9?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure9?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient9 ?? "", measure: meal?.strMeasure9 ?? ""))
        }
        if !(meal?.strIngredient10?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure10?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient10 ?? "", measure: meal?.strMeasure10 ?? ""))
        }
        if !(meal?.strIngredient11?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure11?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient11 ?? "", measure: meal?.strMeasure11 ?? ""))
        }
        if !(meal?.strIngredient12?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure12?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient12 ?? "", measure: meal?.strMeasure12 ?? ""))
        }
        if !(meal?.strIngredient13?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure13?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient13 ?? "", measure: meal?.strMeasure13 ?? ""))
        }
        if !(meal?.strIngredient14?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure14?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient14 ?? "", measure: meal?.strMeasure14 ?? ""))
        }
        if !(meal?.strIngredient15?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure15?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient15 ?? "", measure: meal?.strMeasure15 ?? ""))
        }
        if !(meal?.strIngredient16?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure16?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient16 ?? "", measure: meal?.strMeasure16 ?? ""))
        }
        if !(meal?.strIngredient17?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure17?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient17 ?? "", measure: meal?.strMeasure17 ?? ""))
        }
        if !(meal?.strIngredient18?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure18?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient18 ?? "", measure: meal?.strMeasure18 ?? ""))
        }
        if !(meal?.strIngredient19?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure19?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient19 ?? "", measure: meal?.strMeasure19 ?? ""))
        }
        if !(meal?.strIngredient20?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false), !(meal?.strMeasure20?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ?? false) {
            ingredients.append((ingredient: meal?.strIngredient20 ?? "", measure: meal?.strMeasure20 ?? ""))
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension RandomVC: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
            case 1, 2:
                return 40
            default:
                return 0
        }
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = UIView(frame: CGRect(x: 0.0, y: 0.0, width: tableView.frame.width, height: 40.0))
        viewHeader.backgroundColor = .white

        let lblHeader = UILabel(frame: CGRect(x: 20.0, y: 5.0, width: tableView.frame.width - 40.0, height: 30.0))
        lblHeader.backgroundColor = .white
        lblHeader.font = UIFont.boldSystemFont(ofSize: 25.0)
        lblHeader.textColor = R.color.gray6()

        switch section {
            case 0:
                lblHeader.text = "Details"
            case 1:
                lblHeader.text = "Ingredients"
            case 2:
                lblHeader.text = "Instructions"
            default:
                break
        }

        viewHeader.addSubview(lblHeader)

        return viewHeader
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0, 2:
                return 1
            case 1:
                return ingredients.count
            default:
                return 0
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            case 0:
                let cell = tableView.dequeue(cell: MealDetailCell.self, for: indexPath)
                cell.configure(meal)
                return cell
            case 1:
                let cell = tableView.dequeue(cell: MealIngredientsCell.self, for: indexPath)
                let ingredient = ingredients[indexPath.row]
                cell.configure(ingredient: ingredient.ingredient, measure: ingredient.measure)
                return cell
            case 2:
                let cell = tableView.dequeue(cell: MealInstructionCell.self, for: indexPath)
                cell.configure(meal)
                return cell
            default:
                return UITableViewCell()
        }
    }
}
