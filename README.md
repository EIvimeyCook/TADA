# Caterpillar Abundance Analysis

![License](https://img.shields.io/badge/license-MIT-green)
![License](https://img.shields.io/badge/license-CC%20BY%204.0-green)

## Description
This is an example repository for the TADA! Simple guidelines to improve analytical code sharing for transparency and reproducibility manuscript. Note this is example data.

## Instructions
The only code file is the Caterpillar.Rmd which has all the code needed to run. Data is in the caterpillar_data folder (data.csv).

## Authors
- Edward R. Ivimey-Cook -

## Affiliations
- University of East Anglia, UK

## Contact
📧 E.Ivimey-Cook@uea.ac.uk

## License
This code is licensed under MIT.
This data is licensed under CC-BY-4.0

## Directory Structure
```text
TADA/
├── caterpillar_data/
│   └── data.csv
├── Caterpillar.Rmd
├── index.html
└── README.md

```

## Data Files

### `caterpillar_data/data.csv`

Caterpillar count per habitat

**Dimensions:** 150 rows × 2 columns

**Variables:**

| Column | Type | Description | Units | Summary |
| :----- | :--- | :---------- | :---- | :------ |
| `habitat` | categorical | Habitats A-E |  | levels: A, B, C, D, E | NAs: 0 |
| `caterpillar_count` | numeric | Number of caterpillars found during surveying | Number of Caterpillars | range 2–36 | mean 15.11 | NAs: 0 |

## Other Files

### `index.html`

The html output for the TADA! website.

## Code
Scripts should be run in the following order:


1. **`Caterpillar.Rmd`**
   
   The RMarkdown file to create an example report

## R Environment
**R version:** 4.5.2

| Package | Version |
| :------ | :------ |
| `dplyr` | 1.2.1 |
| `ggplot2` | 4.0.2 |
| `here` | 1.0.2 |

---
*README generated with READMEBuilder on 18 June 2026.*

