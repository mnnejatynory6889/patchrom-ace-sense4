.class Landroid/widget/ActivityChooserModel$HistoryLoader$2;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserModel$HistoryLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActivityChooserModel$HistoryLoader;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryLoader$2;->this$1:Landroid/widget/ActivityChooserModel$HistoryLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$HistoryLoader$2;->this$1:Landroid/widget/ActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1400(Landroid/widget/ActivityChooserModel;)V

    .line 1347
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$HistoryLoader$2;->this$1:Landroid/widget/ActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->sortActivities()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$900(Landroid/widget/ActivityChooserModel;)V

    .line 1348
    return-void
.end method
