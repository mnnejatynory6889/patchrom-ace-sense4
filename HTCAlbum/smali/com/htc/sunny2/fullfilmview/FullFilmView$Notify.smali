.class Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Notify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "NotifyDataChange"

.field private static final LOCK:Ljava/lang/Object;

.field private static sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;


# instance fields
.field private index:I

.field private listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    return-void
.end method

.method private constructor <init>(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)V
    .locals 2

    const-string v0, "NotifyDataChange"

    const-string v1, "NotifyDataChange"

    invoke-direct {p0, v0, v1}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    return-void
.end method

.method static obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    .locals 4

    const/4 v0, 0x0

    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    if-nez v2, :cond_0

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;-><init>(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)V

    move-object v0, v1

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    sput-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iput p0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;->notifyMediaDataChangeIRTLock(I)V

    :cond_0
    return-void
.end method

.method public onRemovedIRT()V
    .locals 2

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    sput-object p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
