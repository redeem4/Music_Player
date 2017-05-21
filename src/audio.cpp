#include "audio.h"

//Default Constructor which initializes the Media Player and
//sets the default starting value of the volume bar.
Audio::Audio(QObject *parent) : QObject(parent)
{
    player = new QMediaPlayer(this);
    on_sliderVolume_sliderMoved(20);
}

//A Function to Play Audio When the Play Button is Pressed
void Audio::play_on_click() {
    player->setMedia(QUrl::fromLocalFile("C:/Users/Dale/Desktop/YAMA_Music_Player-master/test_audio/Aries_Beats_-_Retro_Wave.mp3"));
    player->play();
}

//A Function to Stop Audio From Playing When the Stop Button is Pressed
void Audio::stop_on_click() {
    player->stop();
}

//A Function to Mute Audio When the Mute Button is Pressed
void Audio::mute_on_click() {
    player->setMuted(true);
}

//This Function Makes the Volume louder or higher depending on the slider posiiton.
void Audio::on_sliderVolume_sliderMoved(int position) {
    if(position == 0) {
        player->setMuted(true);
    } else {
        player->setMuted(false);
        player->setVolume(position);
    }
}
