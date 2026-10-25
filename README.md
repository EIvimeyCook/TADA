# TADA — worked example

## Caterpillar Abundance Analysis

<!-- badges: start -->
[![Preprint](https://img.shields.io/badge/preprint-10.32942%2FX2D93K-blue)](https://doi.org/10.32942/X2D93K)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE.md)
[![Data: CC BY 4.0](https://img.shields.io/badge/data-CC%20BY%204.0-green)](LICENSE-data.md)
<!-- badges: end -->

## Description
This is an example repository for the "TADA! Simple guidelines to improve analytical code sharing for transparency and reproducibility" manuscript. Note that this is example data.

## Instructions
There are two code files, which run the same analysis: `MyCode.R` (a plain R script) and `Caterpillar.Rmd` (the same code as an R Markdown report). Either can be run on its own. Data are in the `caterpillar_data` folder (`data.csv`).

Run the code from this folder (for example, open it as your working directory in RStudio), so that `here::here()` finds the data. Install `dplyr`, `ggplot2` and `here` first. Functions from these packages are called by namespace (`package::function()`), so it is clear which package each comes from. The code uses the native `|>` pipe, so it needs R 4.1 or later. Running both files takes a few seconds.

## Authors
- Edward R. Ivimey-Cook

## Affiliations
- University of East Anglia, UK

## Funders
- SORTEE

## Directory Structure
```text
TADA/
├── caterpillar_data/
│   └── data.csv
├── CITATION.cff
├── Caterpillar.Rmd
├── LICENSE-data.md
├── LICENSE.md
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
The two files are independent and can be run in either order:

- **`MyCode.R`**
   
   Imports `caterpillar_data/data.csv`, removes habitat D (erroneous), summarises counts by habitat and runs a Poisson GLM on the filtered data. Produces the numeric results in "Caterpillar Abundance" and Figure 1.

- **`Caterpillar.Rmd`**
   
   The same analysis as an R Markdown report, ending with the session information (R and package versions). `rmarkdown::render("Caterpillar.Rmd", output_file = "index.html")` produces `index.html` (the RStudio Knit button names it `Caterpillar.html`).

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

## Contact
- Edward R. Ivimey-Cook — <e.ivimeycook@gmail.com> —
[ORCID 0000-0003-4910-0443](https://orcid.org/0000-0003-4910-0443)

## License
Code is licensed under the [MIT License](LICENSE.md).
Data are licensed under [CC BY 4.0](LICENSE-data.md).
