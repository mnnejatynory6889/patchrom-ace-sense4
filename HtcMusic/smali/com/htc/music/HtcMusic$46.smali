.class Lcom/htc/music/HtcMusic$46;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 8091
    iput-object p1, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8093
    const-string v2, "SoundEffectDialog"

    const-string v3, "PositiveButton onClick +++"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8094
    const/4 v1, 0x0

    .line 8095
    .local v1, item:Lcom/htc/music/util/SoundEffectItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8096
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    .line 8097
    .restart local v1       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-boolean v2, v1, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v2, :cond_3

    .line 8099
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8101
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 8104
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v2, v0}, Lcom/htc/music/HtcMusic;->access$4302(Lcom/htc/music/HtcMusic;I)I

    .line 8143
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    .line 8148
    const-string v2, "SoundEffectDialog"

    const-string v3, "PositiveButton onClick ---"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8149
    return-void

    .line 8106
    :cond_1
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v2, v0, :cond_2

    .line 8107
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget v4, v4, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v3, v3, v4

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 8111
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$4302(Lcom/htc/music/HtcMusic;I)I

    goto :goto_1

    .line 8113
    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 8119
    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v2, v0}, Lcom/htc/music/HtcMusic;->access$4302(Lcom/htc/music/HtcMusic;I)I

    goto :goto_1

    .line 8095
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
