# TADA — worked example

## Caterpillar Abundance Analysis

<!-- badges: start -->
[![Preprint](https://img.shields.io/badge/preprint-10.32942%2FX2D93K-blue)](https://doi.org/10.32942/X2D93K)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE.md)
[![Data: CC BY 4.0](https://img.shields.io/badge/data-CC%20BY%204.0-green)](LICENSE-data.md)
<!-- badges: end -->

## Description
This is an example repository for "TADA! Simple guidelines to improve analytical code sharing for transparency and reproducibility" manuscript. Note this is example data.

## Instructions
The only code file is the Caterpillar.Rmd which has all the code needed to run. Data is in the caterpillar_data folder (data.csv).

## Authors
- Edward R. Ivimey-Cook -

## Affiliations
- University of East Anglia, UK

## Funders
- SORTEE

## Contact
- Edward R. Ivimey-Cook — <e.ivimeycook@gmail.com> —
[ORCID 0000-0003-4910-0443](https://orcid.org/0000-0003-4910-0443)

## License
Code is licensed under the [MIT License](LICENSE.md).
Data are licensed under [CC BY 4.0](LICENSE-data.md).

## Directory Structure
```text
TADA/
├── caterpillar_data/
│   └── data.csv
├── Caterpillar.Rmd
├── MyCode.R
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

1. **`MyCode.R`**
   
   Load packages, imports caterpillar_data, runs a poisson glm on filtered data. Produces Figure 1.

2. **`Caterpillar.Rmd`**
   
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

## Citation

A machine-readable [`CITATION.cff`](CITATION.cff) is included, so GitHub's
"Cite this repository" button gives formatted APA and BibTeX.
