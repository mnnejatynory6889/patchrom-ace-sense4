.class Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;
.super Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
.source "HtcAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 6298
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 6305
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6306
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 6307
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->onSectionsChanged()V

    .line 6309
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 6317
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 6318
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 6319
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->onSectionsChanged()V

    .line 6321
    :cond_0
    return-void
.end method
