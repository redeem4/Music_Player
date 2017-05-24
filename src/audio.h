#ifndef AUDIO_H
#define AUDIO_H

#include <QObject>
#include <QMediaPlayer>

class Audio : public QObject
{
    Q_OBJECT
public:
    explicit Audio(QObject *parent = 0);

signals:

public slots:
    void play_on_click();
    void play_on_click(QString);
    void stop_on_click();
    void mute_on_click();

    void on_sliderVolume_sliderMoved(int position);

private:
    QMediaPlayer *player;
};

#endif // AUDIO_H
