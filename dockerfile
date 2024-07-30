FROM archlinux:latest


WORKDIR /app

COPY . /app

RUN chsh -s /bin/bash
RUN pacman -Syu --noconfirm
RUN pacman -S python --noconfirm
RUN pacman -S make --noconfirm


#RUN venv/bin/pip install tensorflow tensorflow_hub keras numpy Pillow
RUN make install

CMD ["venv/bin/python3", "main.py"]