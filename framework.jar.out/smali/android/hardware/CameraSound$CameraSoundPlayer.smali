.class Landroid/hardware/CameraSound$CameraSoundPlayer;
.super Ljava/lang/Object;
.source "CameraSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSoundPlayer"
.end annotation


# static fields
.field private static final mFocusSound:Ljava/lang/String; = "/system/media/audio/ui/camera_focus.ogg"

.field private static final mShutterSound:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final mVideoStartSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final mVideoStopSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "soundId"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    .line 182
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/hardware/CameraSound$CameraSoundPlayer;->release()V

    .line 216
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 187
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    :cond_0
    monitor-enter p0

    .line 190
    :try_start_0
    iget v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 197
    monitor-enter p0

    .line 198
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :goto_0
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 209
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 211
    :cond_1
    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 130
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    packed-switch v2, :pswitch_data_0

    .line 144
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    .line 147
    .local v1, soundFilePath:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 149
    :try_start_0
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 150
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 152
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const v3, 0x3e99999a

    const v4, 0x3e99999a

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 153
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :goto_2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_3
    :try_start_2
    iget-boolean v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    if-eqz v2, :cond_0

    .line 164
    monitor-exit p0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error playing sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_1
    const-string v1, "/system/media/audio/ui/camera_focus.ogg"

    .line 136
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 138
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_2
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 139
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_3
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 142
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting up sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :try_start_4
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    if-gtz v2, :cond_1

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 168
    :cond_1
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 172
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    :try_start_5
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
