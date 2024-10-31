import ast


def process_ast(string):
    return ast.literal_eval(string)


def last_problem(doc):
    return process_ast(doc["question"])[-1]


def get_answer_option(problem):
    letter_to_num = {"A": 0, "B": 1, "C": 2, "D": 3}
    answer = letter_to_num[problem["answer"]]
    return problem["options"][answer]


def doc_to_choice(doc):
    # problem = last_problem(doc)
    choices = [doc["options"][i] for i in range(4)]
    return choices



def doc_to_text(doc):
    # print(doc)
    # text = "carefully review the content, analyze the question, and select the answer that best fits."+"\n\n"+"Article: " + doc["article"] + "\n\n"
    text = "Article: " + doc["article"] + "\n\n"
    
    # for problem in process_ast(doc["problems"])[:-1]:
    if doc["question"][-6:] == "  _  .":
        # text += doc["question"][-5:] + get_answer_option(doc) + "\n"
        # text += doc["question"][-5:]  + "\n"
        # text += "Question: " + doc["question"][:-5] + "\n"
        text += "Question, fill in the blank : " + doc["question"][:-5] + "\n"
    else:
        # question = "Question: " + doc["question"] + "\n"
        question = "Question, fill in the blank : " + doc["question"] + "\n"
        # answer = "Answer: " + get_answer_option(doc) + "\n"
        # text += question + answer
        text += question 

    # text += doc["question"]
    return text


def doc_to_target(doc):
    letter_to_num = {"A": 0, "B": 1, "C": 2, "D": 3}
    answer = letter_to_num[doc["answer"]]
    return answer
