# Nigerian Healthcare Forum Q&A Datase

## Dataset Summary


This dataset contains questions from Nigerians on a dedicated healthcare forum and responses provided exclusively by licensed and trained healthcare professionals. It reflects health concerns within the Nigerian context, incorporating English and local colloquialisms. All answers are reliable, as the platform restricted responses to verified healthcare professionals, ensuring the quality and credibility of the information. The dataset comprises a total of **336,681 GPT-2 tokens**.

## Data Collection


The data was curated from the activities on an online platform's open forum page that offered the Nigerian public free advice and answers. It includes:
- 1,731 questions
- 2,639 replies/comments
The data was extracted from a MySQL dump after the platform was closed.

## Data Cleaning


The cleaning process involved:
- Deduplication: Removing duplicate entries to ensure uniqueness.
- Manual Review: Verifying the accuracy and relevance of the data.
- Normalization: Standardizing data formats to match the quality of other relevant datasets.


## Dataset Structure



| Field                       | Type    | Description                                                |
|-----------------------------|---------|------------------------------------------------------------|
| `thread_id`                 | string  | The ID of the original thread                              |
| `category_id`               | string  | The ID of the category                                     |
| `category_name`             | string  | The corresponding name of the category                     |
| `Question`                  | string  | The text of the question asked                             |
| `Question_token_count`      | integer | The number of GPT-2 tokens in the question text            |
| `Question_text_length`      | integer | The length of the question text (in characters)            |
| `Question_language_probability` | float | The confidence score of the language detection algorithm   |
| `Answer`                    | string  | The text of the answer given                               |
| `Answer_token_count`        | integer | The number of GPT-2 tokens in the answer text              |
| `Answer_text_length`        | integer | The length of the answer text (in characters)              |
| `Answer_language_probability` | float | The confidence score of the language detection algorithm   |

## How to Load the Dataset
Here's how you can load and explore the dataset using the 🤗 Datasets library:

```python
import datasets
dataset = datasets.load_dataset('Ayomidejoe/NaijaMed_QA_Dataset')
# Display the first example
print(dataset['train'][0])
```


## Usage


This dataset can be valuable for:

- Natural Language Processing (NLP): Training models on Nigerian English and local colloquialisms.
- Healthcare Analysis: Understanding prevalent health concerns in Nigeria.
- Chatbot Training: Developing AI assistants for healthcare support in Nigerian contexts.

## License
MIT

## Citation


If you use this dataset in your research, please cite it as:

```@dataset {NaijaMed_QA_Dataset},
  title   = {Nigerian Healthcare Forum Q\&A Dataset},
  author  = {Ayomide Owoyemi}
  year    = {2024},
  publisher = {Hugging Face Datasets},
  version   = {1.0.0},
  url       = {https://huggingface.co/datasets/Ayomidejoe/NaijaMed_QA_Dataset},
}
