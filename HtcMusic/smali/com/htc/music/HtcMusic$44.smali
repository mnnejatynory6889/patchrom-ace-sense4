.class Lcom/htc/music/HtcMusic$44;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 8018
    iput-object p1, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 8021
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundEffectDialog, setOnItemClickListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8023
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 8026
    invoke-static {p3}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v1

    .line 8027
    .local v1, realPos:I
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/SoundEffectItem;

    .line 8028
    .local v0, item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 8071
    .end local v0           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v1           #realPos:I
    :goto_0
    return-void

    .line 8031
    .restart local v0       #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v1       #realPos:I
    :cond_0
    iget-boolean v2, v0, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v2, :cond_2

    .line 8032
    iput-boolean v5, v0, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    .line 8033
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8034
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$10700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    .line 8037
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8039
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    .line 8061
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2, v0}, Lcom/htc/music/HtcMusic;->access$10702(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;

    .line 8063
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 8070
    .end local v0           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v1           #realPos:I
    :cond_2
    :goto_2
    const-string v2, "[HtcMusic]"

    const-string v3, "SoundEffectDialog, setOnItemClickListener ---"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8044
    .restart local v0       #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v1       #realPos:I
    :cond_3
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v2, v1, :cond_4

    .line 8049
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    iget v4, v4, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v3, v3, v4

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    goto :goto_1

    .line 8053
    :cond_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    goto :goto_1

    .line 8066
    .end local v0           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v1           #realPos:I
    :cond_5
    const-string v2, "[HtcMusic]"

    const-string v3, "SoundEffectDialog, setOnItemClickListener, mSoundEffectList is null or size is incorrect."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
