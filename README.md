# 2024-02-13-scripts

In-class live coding session for DSCI 310

To set up the environment and download the data

## R

```R
install.packages(c("tidyverse", "docopt"))
```

## Python

```python
pip install click
```

## Data

```bash
curl https://raw.githubusercontent.com/ttimbers/rscript-demo/main/data/titanic.csv -o data/titantic.csv
curl https://swcarpentry.github.io/r-novice-gapminder/data/gapminder-FiveYearData.csv -o data/gapminder.csv
```

## Running the code examples:


```bash
Rscript src/01-print_mean_hp.R
```

```bash
Rscript src/02-titanitc_script.R fare
```

```bash
Rscript src/03-rds.R
```

```bash
Rscript src/04-two_inputs.R data/titanic.csv fare
```

```bash
Rscript src/05-positional.R --file_path=data/titanic.csv --var=fare
```

```bash
python src/cli.py 10 42
```

```bash
python src/cli2.py --num1=10 --num2=400
```
