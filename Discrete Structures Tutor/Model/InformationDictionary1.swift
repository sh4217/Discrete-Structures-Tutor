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
        "Truth table: AND operator",
        "The connector \"Or,\" also known as a disjunction, is represented as ∨. The disjunction of two propositions is true if either of them or both of them are true.\n\nEx: p = \"I own a house.\" \nq = \"I rent an apartment.\" \np∨q = \"I own a house or I own an apartment.\"",
        "Truth table: OR operator",
        "Exclusive or, also known as exclusive disjunction, is represented as ⊕. The exclusive disjunction of two propositions if one of them is true and the other is false.",
        "Truth table: XOR operator",
        "Composite statements can be formed by combining propositions and operators to create new statements.",
        "Compound statement truth table: (~p)∨(~q)",
        "The statement \"if p, then q\" is called an implication, and is represented \"p→q.\" It means that if p is true, then q is guaranteed to be true as well.\n\nEx: p = \"My head feels hot.\"\nq = \"I will take my temperature.\"\np→q = \"If my head feels hot, then I will take my temperature.\"",
        "Truth table: implication",
        "The last two rows of the previous table may have been confusing. Why is p→q true if p is false but q is true?\n\nJust because p implies q does not mean q depends on p. For example, just because I always take my temperature when my head feels hot, does not mean that taking my temperature is automatically a result of my head feeling hot. I took my temperature the other day as part of a COVID screening for a doctor's appointment even though my head felt normal.",
        "Similarly, why is p→q true if p and q are both false? If the hypothesis is false, then it is irrelevant if the conclusion is false too. Is the statement \"If my head feels hot, then I will take my temperature\" disproven if my head feels normal and I don't do anything? No.",
        "The only scenario capable of disproving the implication p→q is if p is true but q remains false.",
        "If we take the implication p→q, then the converse of that implication is q→p.\n\nIf p→q is a valid implication, that does not mean that the converse q→p is necessarily valid.",
        "p = \"I went for a long run.\"\nq = \"I burnt a lot of calories.\"\np→q = \"If I go for a long run, I will burn a lot of calories.\"\nq→p = \"If I burnt a lot of calories, it's because I went for a long run.\"\n\nObviously, the converse is not necessarily valid here. Maybe I burnt a lot of calories by playing basketball.",
        "The inverse of the implication p→q is ~p→~q.\n\nThis is also not logically equivalent to an implication.",
        "The contrapositive of the implication p→q is ~q→~p. The contrapositive is logically equivalent to the implication. If q is false, the only way that p→q retains its validity is if p was false as well.\n\nIf we know that a long run burns a lot of calories, and someone didn't burn a lot of calories, we know they didn't go on a long run.",
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
        UIImage(named: "truthtable2"),
        nil,
        UIImage(named: "truthtable3"),
        nil,
        UIImage(named: "truthtable4"),
        nil,
        UIImage(named: "truthtable5"),
        nil,
        UIImage(named: "truthtable6"),
        nil,
        nil,
        nil,
        nil,
        nil,
        nil,
        nil,
    ]
}
