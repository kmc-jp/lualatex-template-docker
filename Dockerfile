FROM archlinux/base
MAINTAINER polaris <polaris@kmc.gr.jp>

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm make pandoc texlive-bin texlive-fontsextra texlive-formatsextra texlive-langjapanese texlive-latexextra  texlive-pictures texlive-science

# Clone the repository to the current directory and
# specify `-v $(pwd)/{repository-name}:/opt/src`
CMD ["make", "-C", "/opt/src"]
