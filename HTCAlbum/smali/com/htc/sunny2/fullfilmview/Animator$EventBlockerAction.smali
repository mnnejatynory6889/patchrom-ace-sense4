.class Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBlockerAction"
.end annotation


# instance fields
.field private DELAYED_TIME:J

.field private pushedTime:J

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;->DELAYED_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;->pushedTime:J

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 4

    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;->pushedTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$EventBlockerAction;->DELAYED_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
