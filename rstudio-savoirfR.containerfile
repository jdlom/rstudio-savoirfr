ARG R_VERSION=4.0.4

FROM inseefrlab/rstudio:${R_VERSION}

LABEL org.opencontainers.image.source https://github.com/jdlom/rstudio-savoirfR

COPY login_extra.html /etc/rstudio/login.html

RUN installGithub.r \
      MTES-MCT/savoirfR \
    && install2.r --error \
      kableExtra \
      hrbrthemes \
      highcharter \
      waffle \
      gganimate \
      ggspatial \
      GGally \
      grid \
      renv \
      lsr \
      cartography \
      FactoMineR \
      factoextra \
      ggExtra
