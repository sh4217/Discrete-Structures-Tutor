import UIKit

class InformationDictionary1 {
    let lecture: [String] = [
        "What is a proposition?",
        "A proposition is a sentence that declares a fact that is either true or false.",
        "We can assign propositions to variables that allow us to perform operations on them and to connect them with other propositions.",
        "For example, let us represent the proposition “it is raining today” with the variable p.",
        "The logical operator “Not,” or ¬, represents the inverse of the proposition it is placed before.\n\n~p is read as \"not p.\"",
        "You can make compound propositions by combining individual propositions with logical operators and/or connectors.",
        "Truth tables allow us to compare the truth value of propositions, often in conjunction with locial operators and connectors.",
        "The truth table below compares the values of p to ~p.",
        "The connector \"And,\" also known as a conjunction, is represented as ^.\n\nThe conjunction of two propositions, often represented as p^q, is only true when both p and q are true.\n\nEx: p = \"It is raining today.\" q = \"The ground is wet.\" p^q = \"It is raining today and the ground is wet.\"",
        "The connector \"Or,\" also known as a disjunction, is represented as ∨. The disjunction of two propositions is true if either of them or both of them are true.\n\nEx: p = \"I own a house.\" \nq = \"I rent an apartment.\" \np∨q = \"I own a house or I own an apartment.\"",
        "",
        
    ]
    
    let image: [UIImage?] = [
        nil,
        nil,
        nil,
        nil,
        nil,
        nil,
        nil,
        UIImage(named: "truthtable1"),
        nil,
        nil,
    ]
}
