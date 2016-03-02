//
//  ViewController.swift
//  ticTacToe
//
//  Created by Sae Hee Lee on 2/24/16.
//  Copyright © 2016 Sae Hee Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!

    @IBOutlet weak var currentLetter: UILabel!
    
    var letters = "XOXOXOXOXOXOXOXOXOXOXOXOXOX"
    var counter = 0
    var currentCharacter: Character!
    var labelArray = [UILabel]()
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        labelArray = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]
        getAndSetCharacter()
        
    }
    
    @IBAction func whenTapped(sender: UITapGestureRecognizer)
    {
        
            
        let selectedPoint = sender.locationInView(self.view)
        
        for label in labelArray
        {
            if CGRectContainsPoint(label.frame, selectedPoint)
            {
                label.text = String(currentCharacter)
                 counter++
            }

            
            if self.labelOne.text == "X" && self.labelTwo.text == "X" && self.labelThree.text == "X" || self.labelFour.text == "X" && self.labelFive.text == "X" && self.labelSix.text == "X" || self.labelSeven.text == "X" && self.labelEight.text == "X" &&  self.labelNine.text == "X" || self.labelOne.text == "X" && self.labelFour.text == "X" && self.labelSeven.text == "X" || self.labelTwo.text == "X" && self.labelFive.text == "X" && self.labelEight.text == "X" || self.labelThree.text == "X" && self.labelSix.text == "X" && self.labelNine.text == "X" || self.labelOne.text == "X" && self.labelFive.text == "X" && self.labelNine.text == "X" || self.labelThree.text == "X" && self.labelFive.text == "X" && self.labelSeven.text == "X"

        {
            counter = XWon()
        }
                getAndSetCharacter()
                }
        if labelOne.text == "O" && self.labelTwo.text == "O" && self.labelThree.text == "O" || self.labelFour.text == "O" && self.labelFive.text == "O" && self.labelSix.text == "O" || self.labelSeven.text == "O" && self.labelEight.text == "O" &&  self.labelNine.text == "O" || self.labelOne.text == "O" && self.labelFour.text == "O" && self.labelSeven.text == "O" || self.labelTwo.text == "O" && self.labelFive.text == "O" && self.labelEight.text == "O" || self.labelThree.text == "O" && self.labelSix.text == "X" && self.labelNine.text == "O" || self.labelOne.text == "O" && self.labelFive.text == "O" && self.labelNine.text == "O" || self.labelThree.text == "O" && self.labelFive.text == "O" && self.labelSeven.text == "O"
        {
           counter = OWon()
        
    }
        if counter == 9 && labelOne.text == "O" && self.labelTwo.text == "O" || counter == 9 && self.labelTwo.text == "O" && self.labelThree.text == "O" || counter == 9 && self.labelFour.text == "O" && self.labelFive.text == "O" || counter == 9 && self.labelFive.text == "O" && self.labelSix.text == "O" || counter == 9 && self.labelSeven.text == "O" && self.labelEight.text == "O" &&  self.labelNine.text == "O" || counter == 9 && self.labelEight.text == "O" && self.labelNine.text == "O" || counter == 9 && self.labelOne.text == "O" && self.labelFour.text == "O" && self.labelSeven.text == "O" || counter == 9 && self.labelFour.text == "O" && self.labelSeven.text == "O" || counter == 9 && self.labelTwo.text == "O" && self.labelFive.text == "O" && self.labelEight.text == "O" || counter == 9 && self.labelFive.text == "O" && self.labelEight.text == "O" || counter == 9 && self.labelThree.text == "O" && self.labelSix.text == "X" && self.labelNine.text == "O" || counter == 9 && self.labelSix.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelOne.text == "X" && self.labelFive.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelThree.text == "X" && self.labelFive.text == "X" && self.labelSeven.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelSeven.text == "X" || counter == 9 && labelOne.text == "X" && self.labelTwo.text == "X" || counter == 9 && self.labelTwo.text == "X" && self.labelThree.text == "X" || self.labelFour.text == "X" && self.labelFive.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelSix.text == "X" || counter == 9 && self.labelSeven.text == "X" && self.labelEight.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelEight.text == "X" &&  self.labelNine.text == "X" || counter == 9 && self.labelOne.text == "X" && self.labelFour.text == "X" && self.labelSeven.text == "X" || counter == 9 && self.labelFour.text == "X" && self.labelSeven.text == "X" || counter == 9 && self.labelTwo.text == "X" && self.labelFive.text == "X" && self.labelEight.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelEight.text == "X" || counter == 9 && self.labelThree.text == "X" && self.labelSix.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelSix.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelOne.text == "X" && self.labelFive.text == "X" && self.labelNine.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelNine.text == "O" || counter == 9 && self.labelThree.text == "X" && self.labelFive.text == "X" && self.labelSeven.text == "X" || counter == 9 && self.labelFive.text == "X" && self.labelSeven.text == "X"

    {
    counter = resetGame()
    }

        }

    
    func getAndSetCharacter()
    {
        currentCharacter = letters[letters.startIndex.advancedBy(counter)]
        currentLetter.text = String(currentCharacter)
    }
    
    
    func XWon() -> Int
    {
        let alert = UIAlertController(title: "Consgrats! Winner is X" , message: "Press RESET to start over.", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "RESET GAME", style: .Default, handler:
            {
                sender in
                self.labelOne.text = ""
                self.labelTwo.text = ""
                self.labelThree.text = ""
                self.labelFour.text = ""
                self.labelFive.text = ""
                self.labelSix.text = ""
                self.labelSeven.text = ""
                self.labelEight.text = ""
                self.labelNine.text = ""
        })
        
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
        return 0
    }
    

    func OWon() -> Int
    {
        let alert = UIAlertController(title: "Consgrats! Winner is O! " , message: "Press RESET to start over.", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "RESET GAME", style: .Default, handler:
            {
                sender in
                self.labelOne.text = ""
                self.labelTwo.text = ""
                self.labelThree.text = ""
                self.labelFour.text = ""
                self.labelFive.text = ""
                self.labelSix.text = ""
                self.labelSeven.text = ""
                self.labelEight.text = ""
                self.labelNine.text = ""
        })
        
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
        return 0
    }
    

    
    func resetGame() -> Int
    {
    
        let alert = UIAlertController(title: "Meaw! Cats Scratch ", message: "press reset to start over", preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "RESET GAME", style: .Default, handler:
            {
                sender in
                self.labelOne.text = ""
                self.labelTwo.text = ""
                self.labelThree.text = ""
                self.labelFour.text = ""
                self.labelFive.text = ""
                self.labelSix.text = ""
                self.labelSeven.text = ""
                self.labelEight.text = ""
                self.labelNine.text = ""
        })
        
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
        return 0
    }
}



