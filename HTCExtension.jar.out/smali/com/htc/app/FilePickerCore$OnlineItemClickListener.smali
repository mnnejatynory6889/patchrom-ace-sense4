.class Lcom/htc/app/FilePickerCore$OnlineItemClickListener;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 2740
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v4, 0x0

    .line 2742
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v3, v3, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    aget-object v2, v3, p3

    .line 2743
    .local v2, tab_string:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v3, v3, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    aget-object v0, v3, p3

    .line 2745
    .local v0, chosen_string:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;)I

    move-result v1

    .line 2746
    .local v1, dataSourceType:I
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/htc/app/FilePickerCore;->access$4502(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)Ljava/lang/String;

    .line 2747
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2748
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$4602(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2749
    const/4 v1, 0x0

    .line 2753
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2754
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5000(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2757
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$4602(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2759
    const/4 v1, 0x1

    .line 2763
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2764
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    goto :goto_0
.end method
