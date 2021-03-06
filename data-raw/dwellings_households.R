#
# generates the dwellings_households data


library(gosp.dpp)


dwellings_households = list()

# parents
dwellings_households$sample.A <- gosp.dpp::create_sample(
                data=data.frame(
                        read.csv(
                            "data-raw/logements.csv", 
                            sep=";", 
                            dec=",",
                            check.names=FALSE),
                        check.names=FALSE
                        ),
                encoding = list(
                        'surface'=list(
                            'small'=1,
                            'medium'=2,
                            'large'=3
                            )
                       ),
                weight.colname="weight"
                )


# children
dwellings_households$sample.B <- create_sample(
                data=data.frame(
                        read.csv(
                            "data-raw/foyers.csv", 
                            sep=";", 
                            dec=",",
                            check.names=FALSE),
                        check.names=FALSE
                        ),
                encoding = list(
                        'size'=list(
                            '1'=1,
                            '2'=2,
                            '3'=3,
                            '4'=4
                            )
                       ),
                weight.colname="weight"
                )


# pdi
dwellings_households$pdi <- create_degree_probabilities_table(
                data.frame(
                    'surface=1'=c(0.2, 0.8, 0, 0, 0),
                    'surface=2'=c(0.15, 0.8, 0.05, 0, 0),
                    'surface=3'=c(0.05, 0.8, 0.1, 0.05, 0),
                    check.names=FALSE
                    )
                )


# pdj
dwellings_households$pdj <- create_degree_probabilities_table(
                data.frame(
                    'size=1'=c(0, 1),
                    'size=2'=c(0, 1),
                    'size=3'=c(0, 1),
                    'size=4'=c(0, 1),
                    check.names=FALSE
                    )
                )

dwellings_households$pij <- create_matching_probabilities_table(
                data.frame(
                    'surface=1'=c(0.2, 0.1, 0.05, 0.025),
                    'surface=2'=c(0.0375, 0.125, 0.1, 0.05),
                    'surface=3'=c(0.0125, 0.025, 0.1, 0.175),
                    row.names=c("size=1", "size=2", "size=3", "size=4"),
                    check.names=FALSE
                    )
                )

devtools::use_data(dwellings_households, overwrite=TRUE)