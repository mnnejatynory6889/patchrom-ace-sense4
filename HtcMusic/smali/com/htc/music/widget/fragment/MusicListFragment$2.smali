.class Lcom/htc/music/widget/fragment/MusicListFragment$2;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/fragment/MusicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/fragment/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment$2;->this$0:Lcom/htc/music/widget/fragment/MusicListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment$2;->this$0:Lcom/htc/music/widget/fragment/MusicListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/widget/fragment/MusicListFragment;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 175
    return-void
.end method
