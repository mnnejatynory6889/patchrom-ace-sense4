.class Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;
.super Landroid/database/ContentObserver;
.source "CarouselPluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselPluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselPluginFragment;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselPluginFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;->this$0:Lcom/htc/fragment/widget/CarouselPluginFragment;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;->this$0:Lcom/htc/fragment/widget/CarouselPluginFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->onAddPluginTabs()V

    return-void
.end method
