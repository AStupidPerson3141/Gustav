FROM archlinux:latest


WORKDIR /app

COPY . /app

RUN chsh -s /bin/bash
RUN pacman -Syu --noconfirm
RUN pacman -S python --noconfirm
RUN pacman -S python-pip --noconfirm

RUN python3 -m venv /app/venv

#RUN source venv/bin/activate

#RUN python3 -m pip install --upgrade pip
RUN venv/bin/pip install tensorflow tensorflow_hub keras numpy Pillow

CMD ["venv/bin/python3", "main.py"]