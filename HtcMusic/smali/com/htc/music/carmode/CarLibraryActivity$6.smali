.class Lcom/htc/music/carmode/CarLibraryActivity$6;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "me"

    .prologue
    .line 315
    const-string v0, "[CarLibraryActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture mTouchListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/htc/music/carmode/CarLibraryActivity;->access$300(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLibraryActivity;->access$400(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "Gesture onTouchEvent = "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLibraryActivity;->access$400(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
