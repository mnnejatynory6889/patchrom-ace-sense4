.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initKeypadGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    .line 430
    const-string v5, "[CarLocalMusicSearchActivity]"

    const-string v6, "Gesture onFling"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v4

    .line 435
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v0, v5

    .line 436
    .local v0, diffX:D
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture diffX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v2, v5

    .line 438
    .local v2, diffY:D
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture diffY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture velocityX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture velocityY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-wide/16 v5, 0x0

    cmpl-double v5, v2, v5

    if-lez v5, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 442
    const/4 v5, 0x0

    cmpl-float v5, p4, v5

    if-lez v5, :cond_0

    .line 443
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->onBackPressed()V

    .line 444
    const/4 v4, 0x1

    goto/16 :goto_0
.end method
