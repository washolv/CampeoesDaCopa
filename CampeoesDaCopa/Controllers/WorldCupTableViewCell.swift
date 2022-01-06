//
//  WordCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Francisco Washington de Almeida Oliveira on 05/01/22.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    @IBOutlet weak var lbCoutry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func prepare(with cup: WorldCup){
        lbYear.text = "\(cup.year)"
        ivVice.image = UIImage(named: cup.vice)
        ivWinner.image = UIImage(named: cup.winner)
        lbWinner.text  = cup.winner
        lbVice.text = cup.vice
        lbCoutry.text = cup.country
        lbWinnerScore.text = cup.winnerScore
        lbViceScore.text = cup.viceScore
    }
}
