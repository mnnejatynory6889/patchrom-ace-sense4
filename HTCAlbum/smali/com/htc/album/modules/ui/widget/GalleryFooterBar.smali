.class public abstract Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        "CTR",
        "LBTN:Lcom/htc/album/modules/ui/widget/ControlButton",
        "<*>;>",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<THOST;TCTR",
        "LBTN;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEF_BUTTON_SIZE:I = 0x4

.field protected static final DEF_FOOTER_HEIGHT:I = 0x78

.field protected static final FOOTER_LAYOUT:I = 0x7f03001a

.field protected static final FOOTER_LAYOUT_DMC:I = 0x7f030011

.field protected static final FOOTER_LAYOUT_SLIDESHOW:I = 0x7f030042

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_DEFAULT:I = 0x1

.field public static final STYLE_DMC:I = 0x3

.field public static final STYLE_SLIDESHOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public static makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
            "<**>;"
        }
    .end annotation

    const v2, 0x7f03001a

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    const v1, 0x7f030042

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    const v1, 0x7f030011

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
            "<**>;"
        }
    .end annotation

    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    const v1, 0x7f03001a

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method


# virtual methods
.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TCTR",
            "LBTN;"
        }
    .end annotation

    const/4 v4, 0x0

    sparse-switch p3, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_More_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0131

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a012e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a013e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0147

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a012f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Info_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0145

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_More_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0146

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v5, 0x7f0a0115

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v5, 0x7f0a0114

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xe -> :sswitch_3
        0x11 -> :sswitch_0
        0x2c -> :sswitch_7
        0x2d -> :sswitch_8
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TCTR",
            "LBTN;"
        }
    .end annotation

    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    return-object v1
.end method
