.class abstract Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

.field private mConfirmMove:Z

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mDrawableTop:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field private mHorizontalEdgeAdj:Z

.field private mHorizontalOffset:I

.field protected mHotspotX:I

.field protected mHotspotY:F

.field protected mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field protected mIsInsertionHandle:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field protected mPos:I

.field private mPositionHasChanged:Z

.field protected mPositionOnTop:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11711
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 11712
    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11669
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    .line 11675
    iput v5, p0, Landroid/widget/TextView$HandleView;->mHorizontalOffset:I

    .line 11676
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mHorizontalEdgeAdj:Z

    .line 11680
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    .line 11705
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11707
    iput-boolean v6, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 11773
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    .line 11774
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    .line 11775
    iput v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11776
    iput v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11713
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 11715
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 11716
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 11717
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 11718
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 11720
    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 11721
    iput-object p3, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 11724
    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {p1}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11725
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->setOrientationHTC()V

    .line 11733
    :goto_0
    return-void

    .line 11727
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->updateDrawable()V

    .line 11728
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 11729
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 11730
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method static synthetic access$7600(Landroid/widget/TextView$HandleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11667
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/widget/TextView$HandleView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11667
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 11784
    iget v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11785
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 11786
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 11787
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11788
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 11791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 11792
    .local v3, now:J
    const/4 v0, 0x0

    .line 11793
    .local v0, i:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11794
    .local v2, index:I
    iget v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11795
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 11796
    add-int/lit8 v0, v0, 0x1

    .line 11797
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 11800
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 11802
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 11804
    :cond_1
    return-void
.end method

.method private findBestPosition(II)V
    .locals 21
    .parameter "lineTop"
    .parameter "lineBottom"

    .prologue
    .line 11978
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 11979
    .local v3, actionbarHeightValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x10102eb

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11980
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 11983
    .local v11, mStatusBarWindowOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mPos:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 12026
    :cond_0
    :goto_0
    return-void

    .line 11985
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 11986
    .local v10, hostView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 11987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 11989
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 11990
    .local v7, clip:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 11991
    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 11992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static/range {v18 .. v18}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)I

    move-result v18

    add-int v14, p1, v18

    .line 11993
    .local v14, posTopY:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v14, v0, :cond_4

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v14, v0, :cond_4

    const/16 v16, 0x1

    .line 11994
    .local v16, topVisible:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static/range {v18 .. v18}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)I

    move-result v18

    add-int v13, p2, v18

    .line 11995
    .local v13, posBotomY:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_5

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v13, v0, :cond_5

    const/4 v6, 0x1

    .line 11996
    .local v6, bottomVisible:Z
    :goto_2
    invoke-static {}, Landroid/widget/TextView;->access$8100()Landroid/graphics/Rect;

    move-result-object v4

    .line 11997
    .local v4, anchorRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v17

    .line 11998
    .local v17, windowRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/widget/TextView;->mTempCoords:[I

    .line 11999
    .local v8, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 12000
    .local v9, handleHeight:I
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12001
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 12002
    sub-int v18, v14, v9

    const/16 v19, 0x1

    aget v19, v8, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 12003
    const/16 v18, 0x1

    aget v18, v8, v18

    add-int v18, v18, v14

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 12005
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/4 v15, 0x1

    .line 12007
    .local v15, topAllVisible:Z
    :goto_3
    const/16 v18, 0x1

    aget v18, v8, v18

    add-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 12008
    add-int v18, v13, v9

    const/16 v19, 0x1

    aget v19, v8, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 12009
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/4 v5, 0x1

    .line 12010
    .local v5, bottomAllVisible:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mPos:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    const/4 v12, 0x1

    .line 12011
    .local v12, newPosIsTop:Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mPos:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 12012
    if-eqz v16, :cond_9

    if-eqz v15, :cond_9

    .line 12021
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_0

    .line 12022
    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    .line 12023
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$HandleView;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12024
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$HandleView;->invalidate()V

    goto/16 :goto_0

    .line 11993
    .end local v4           #anchorRect:Landroid/graphics/Rect;
    .end local v5           #bottomAllVisible:Z
    .end local v6           #bottomVisible:Z
    .end local v8           #coords:[I
    .end local v9           #handleHeight:I
    .end local v12           #newPosIsTop:Z
    .end local v13           #posBotomY:I
    .end local v15           #topAllVisible:Z
    .end local v16           #topVisible:Z
    .end local v17           #windowRect:Landroid/graphics/Rect;
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 11995
    .restart local v13       #posBotomY:I
    .restart local v16       #topVisible:Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 12005
    .restart local v4       #anchorRect:Landroid/graphics/Rect;
    .restart local v6       #bottomVisible:Z
    .restart local v8       #coords:[I
    .restart local v9       #handleHeight:I
    .restart local v17       #windowRect:Landroid/graphics/Rect;
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 12009
    .restart local v15       #topAllVisible:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 12010
    .restart local v5       #bottomAllVisible:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 12013
    .restart local v12       #newPosIsTop:Z
    :cond_9
    if-eqz v6, :cond_3

    if-nez v5, :cond_a

    if-nez v16, :cond_3

    .line 12014
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 12017
    :cond_b
    if-eqz v6, :cond_c

    if-nez v5, :cond_3

    .line 12018
    :cond_c
    if-eqz v16, :cond_3

    if-nez v15, :cond_d

    if-nez v6, :cond_3

    .line 12019
    :cond_d
    const/4 v12, 0x1

    goto :goto_6

    .line 12023
    :cond_e
    const/16 v18, 0x0

    goto :goto_7
.end method

.method private isVisible()Z
    .locals 4

    .prologue
    .line 11917
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 11918
    const/4 v0, 0x1

    .line 11925
    :goto_0
    return v0

    .line 11921
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11922
    const/4 v0, 0x0

    goto :goto_0

    .line 11925
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mStatusBarWindowOffset:I
    invoke-static {v3}, Landroid/widget/TextView;->access$7800(Landroid/widget/TextView;)I

    move-result v3

    sub-int/2addr v2, v3

    #calls: Landroid/widget/TextView;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 11779
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11780
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 11781
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 11833
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 11834
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11835
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11836
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 11837
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 11838
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 11841
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    .line 11843
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 11844
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 11884
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11885
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11889
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11890
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 11896
    :cond_1
    :goto_0
    return-void

    .line 11892
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 11893
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_0
.end method

.method public hidePasteWidow()V
    .locals 2

    .prologue
    .line 11848
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 11849
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 11850
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 12305
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 11899
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11807
    iget v1, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 12313
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 12314
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 12068
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12069
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12070
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-eqz v0, :cond_0

    .line 12071
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHorizontalOffset:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12073
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12078
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 12100
    :goto_1
    return-void

    .line 12075
    :cond_0
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHorizontalOffset:I

    int-to-float v0, v0

    const/high16 v1, -0x4080

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12076
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 12083
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12086
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-eqz v0, :cond_2

    .line 12087
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12088
    const/high16 v0, 0x4334

    iget v1, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 12091
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12094
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 12096
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 12309
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 12310
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 11813
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11814
    iget v0, p0, Landroid/widget/TextView$HandleView;->mWidth:I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    .line 11818
    :goto_0
    return-void

    .line 11817
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 12104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 12301
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 12106
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView$HandleView;->startTouchUpFilter(I)V

    .line 12110
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    #setter for: Landroid/widget/TextView;->mPreviousX:F
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;F)F

    .line 12113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v22

    .line 12114
    .local v22, selectionStart:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v21

    .line 12115
    .local v21, selectionEnd:I
    sub-int v2, v21, v22

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 12116
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/TextView;->mSelectAChar:Z

    .line 12119
    :goto_2
    const-string v2, "HtcAnchorOverlap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(HandleView.ActionDown) mSelectAChar ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-boolean v4, v4, Landroid/widget/TextView;->mSelectAChar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12122
    const/4 v13, 0x0

    .line 12123
    .local v13, isAllDownAnchor:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12124
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v13

    .line 12125
    :cond_1
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-boolean v2, v2, Landroid/widget/TextView;->mSelectAChar:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 12126
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    #setter for: Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8402(Landroid/widget/TextView;Z)Z

    .line 12127
    const/4 v2, 0x0

    goto :goto_1

    .line 12118
    .end local v13           #isAllDownAnchor:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/widget/TextView;->mSelectAChar:Z

    goto :goto_2

    .line 12129
    .restart local v13       #isAllDownAnchor:Z
    :cond_3
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 12130
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    #setter for: Landroid/widget/TextView;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8502(Landroid/widget/TextView;Z)Z

    .line 12134
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 12135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 12137
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v2}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v17

    .line 12138
    .local v17, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 12139
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 12140
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 12143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_5

    .line 12144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 12145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 12146
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView$HandleView;->mConfirmMove:Z

    .line 12148
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 12155
    .end local v13           #isAllDownAnchor:Z
    .end local v17           #positionListener:Landroid/widget/TextView$PositionListener;
    .end local v21           #selectionEnd:I
    .end local v22           #selectionStart:I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    .line 12156
    .local v19, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    .line 12159
    .local v20, rawY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move/from16 v0, v19

    #calls: Landroid/widget/TextView;->getDirection(F)I
    invoke-static {v2, v0}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;F)I

    move-result v12

    .line 12162
    .local v12, direction:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mFirstDirection:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 12163
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    #setter for: Landroid/widget/TextView;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8502(Landroid/widget/TextView;Z)Z

    .line 12165
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 12166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move/from16 v0, v19

    #setter for: Landroid/widget/TextView;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;F)F

    .line 12167
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 12168
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPreviousX:F
    invoke-static {v2}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)F

    move-result v2

    cmpl-float v2, v2, v19

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mDonotPassToLeft:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 12169
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    #setter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8902(Landroid/widget/TextView;Z)Z

    .line 12170
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move/from16 v0, v19

    #setter for: Landroid/widget/TextView;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;F)F

    .line 12171
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 12172
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    move/from16 v0, v19

    #setter for: Landroid/widget/TextView;->mPreviousX:F
    invoke-static {v2, v0}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;F)F

    .line 12176
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v18, v2, v3

    .line 12177
    .local v18, previousVerticalOffset:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v2, v2

    sub-float v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    .line 12179
    .local v11, currentVerticalOffset:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    cmpg-float v2, v18, v2

    if-gez v2, :cond_9

    .line 12180
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 12181
    .local v16, newVerticalOffset:F
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 12186
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v2, v2

    add-float v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 12190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 12191
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 12183
    .end local v16           #newVerticalOffset:F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 12184
    .restart local v16       #newVerticalOffset:F
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_3

    .line 12193
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v2, v19, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v3, v3

    add-float v14, v2, v3

    .line 12194
    .local v14, newPosX:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    add-float v15, v2, v3

    .line 12197
    .local v15, newPosY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 12198
    const/16 v23, 0x0

    .line 12199
    .local v23, showMagnifier:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 12201
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v23

    .line 12202
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkAutoScroll(FF)V

    .line 12203
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->isAutoScrolling()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 12204
    const/16 v23, 0x0

    .line 12206
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 12208
    .local v8, before:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/widget/TextView$HandleView;->updatePosition(FF)V

    .line 12210
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_5
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 12212
    .local v10, currLine:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLastLine:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 12213
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    #setter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Z)Z

    .line 12215
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mLastLine:I
    invoke-static {v2, v10}, Landroid/widget/TextView;->access$9102(Landroid/widget/TextView;I)I

    .line 12216
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_6
    if-eq v8, v2, :cond_15

    const/4 v9, 0x1

    .line 12217
    .local v9, changed:Z
    :goto_7
    if-nez v9, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 12218
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView$HandleView;->mConfirmMove:Z

    .line 12221
    :cond_e
    if-eqz v9, :cond_f

    .line 12222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Landroid/widget/TextView;->mAnchorLastMovedMilli:J
    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->access$9202(Landroid/widget/TextView;J)J

    .line 12223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mAnchorLastMovedIndex:I
    invoke-static {v2, v8}, Landroid/widget/TextView;->access$9302(Landroid/widget/TextView;I)I

    .line 12226
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView$HandleView;->mConfirmMove:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 12227
    const/16 v23, 0x0

    .line 12230
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mFlags:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    .line 12231
    const/16 v23, 0x0

    .line 12233
    :cond_11
    if-eqz v23, :cond_18

    .line 12234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    float-to-int v4, v14

    float-to-int v5, v15

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView$HandleView;->mPos:I

    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-eqz v7, :cond_17

    sget-object v7, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    :goto_9
    invoke-virtual/range {v2 .. v7}, Lcom/htc/textselection/HtcTextSelectionManager;->showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    goto/16 :goto_0

    .line 12206
    .end local v8           #before:I
    .end local v9           #changed:Z
    .end local v10           #currLine:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    goto/16 :goto_4

    .line 12210
    .restart local v8       #before:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_5

    .line 12216
    .restart local v10       #currLine:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_6

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 12234
    .restart local v9       #changed:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    goto :goto_8

    :cond_17
    sget-object v7, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    goto :goto_9

    .line 12238
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    goto/16 :goto_0

    .line 12241
    .end local v8           #before:I
    .end local v9           #changed:Z
    .end local v10           #currLine:I
    .end local v23           #showMagnifier:Z
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/widget/TextView$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 12253
    .end local v11           #currentVerticalOffset:F
    .end local v12           #direction:I
    .end local v14           #newPosX:F
    .end local v15           #newPosY:F
    .end local v16           #newVerticalOffset:F
    .end local v18           #previousVerticalOffset:F
    .end local v19           #rawX:F
    .end local v20           #rawY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_1c

    .line 12254
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 12255
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->resetDragging()V

    .line 12256
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8902(Landroid/widget/TextView;Z)Z

    .line 12257
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 12258
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 12259
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->resetDragging()V

    .line 12264
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8402(Landroid/widget/TextView;Z)Z

    .line 12265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mPassToLeftAnchor:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8902(Landroid/widget/TextView;Z)Z

    .line 12266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mDonotPassToLeft:Z
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8502(Landroid/widget/TextView;Z)Z

    .line 12267
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/TextView;->mChangeTimes:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$9502(Landroid/widget/TextView;I)I

    .line 12268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, -0x1

    #setter for: Landroid/widget/TextView;->mCurrentDirection:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$9602(Landroid/widget/TextView;I)I

    .line 12269
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, -0x1

    #setter for: Landroid/widget/TextView;->mPreDirection:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$9702(Landroid/widget/TextView;I)I

    .line 12270
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, -0x1

    #setter for: Landroid/widget/TextView;->mFirstDirection:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$8802(Landroid/widget/TextView;I)I

    .line 12273
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 12276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 12279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 12281
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-nez v2, :cond_0

    .line 12283
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$9800(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canReplaceActionMode()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 12284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->showQuickAction()V
    invoke-static {v2}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)V

    .line 12287
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mAnchorLastMovedMilli:J
    invoke-static {v4}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)J

    move-result-wide v4

    sub-long v24, v2, v4

    .line 12288
    .local v24, t:J
    const-wide/16 v2, 0x3c

    cmp-long v2, v24, v2

    if-gez v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 12289
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mAnchorLastMovedIndex:I
    invoke-static {v3}, Landroid/widget/TextView;->access$9300(Landroid/widget/TextView;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 12290
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x64

    cmp-long v2, v24, v2

    if-gez v2, :cond_0

    .line 12291
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView$HandleView;->mPos:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 12292
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->flyToEnd(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 12294
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->flyToStart(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 12104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 7
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v4, 0x1

    .line 11937
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 11939
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->prepareCursorControllers()V
    invoke-static {v4}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)V

    .line 11973
    :cond_0
    :goto_0
    return-void

    .line 11943
    :cond_1
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    if-ne p1, v5, :cond_2

    if-eqz p2, :cond_0

    .line 11944
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView$HandleView;->updateSelection(I)V

    .line 11945
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 11946
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11949
    .local v1, line:I
    const/4 v0, 0x1

    .line 11950
    .local v0, bottom:Z
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 11951
    .local v3, lineTop:I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 11952
    .local v2, lineBottom:I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v5}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11953
    invoke-direct {p0, v3, v2}, Landroid/widget/TextView$HandleView;->findBestPosition(II)V

    .line 11954
    iget-boolean v5, p0, Landroid/widget/TextView$HandleView;->mPositionOnTop:Z

    if-nez v5, :cond_4

    move v0, v4

    .line 11958
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    const/high16 v6, 0x3f00

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11959
    if-eqz v0, :cond_5

    .end local v2           #lineBottom:I
    :goto_2
    iput v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11962
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v6}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11963
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v6}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11965
    iput p1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11966
    iput-boolean v4, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 11969
    iget v4, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mStatusBarWindowOffset:I
    invoke-static {v5}, Landroid/widget/TextView;->access$7800(Landroid/widget/TextView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    goto :goto_0

    .line 11954
    .restart local v2       #lineBottom:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 11959
    :cond_5
    iget v5, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    sub-int v2, v3, v5

    goto :goto_2
.end method

.method public resetDragging()V
    .locals 1

    .prologue
    .line 11904
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 11905
    return-void
.end method

.method public setOrientationHTC()V
    .locals 3

    .prologue
    .line 11739
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 11740
    .local v0, density:F
    const/high16 v1, 0x4220

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mWidth:I

    .line 11741
    const/high16 v1, 0x4270

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    .line 11743
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->getAnchorBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11744
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->getAnchorBarDrawableTop(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 11745
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 11746
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    #setter for: Landroid/widget/TextView;->mAnchorHeight:I
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$7202(Landroid/widget/TextView;I)I

    .line 11747
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #setter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$7302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11749
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 11750
    iget v1, p0, Landroid/widget/TextView$HandleView;->mWidth:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mHorizontalOffset:I

    .line 11751
    iget v1, p0, Landroid/widget/TextView$HandleView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 11752
    const v1, 0x3f333333

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    .line 11753
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->invalidate()V

    .line 11755
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "touchable"

    .prologue
    .line 11909
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isTouchable()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11910
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 11911
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 11913
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 11821
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11830
    :goto_0
    return-void

    .line 11823
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 11826
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11827
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 11829
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 5
    .parameter "delay"

    .prologue
    .line 11856
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11857
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-nez v1, :cond_0

    .line 11858
    new-instance v1, Landroid/widget/TextView$ActionPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11862
    :cond_0
    move-object v0, p0

    .line 11864
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 11865
    new-instance v1, Landroid/widget/TextView$HandleView$1;

    invoke-direct {v1, p0, v0}, Landroid/widget/TextView$HandleView$1;-><init>(Landroid/widget/TextView$HandleView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 11879
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11880
    return-void

    .line 11877
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 11759
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 11760
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 11761
    .local v0, isRtlCharAtOffset:Z
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11762
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11763
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 11765
    :cond_0
    return-void

    .line 11762
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 12030
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v3, p4}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 12031
    if-nez p3, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    if-eqz v3, :cond_5

    .line 12032
    :cond_0
    iget-boolean v3, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v3, :cond_3

    .line 12034
    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq p2, v3, :cond_2

    .line 12035
    :cond_1
    iget v3, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v4, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 12036
    iget v3, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v4, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 12037
    iput p1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 12038
    iput p2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 12041
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 12044
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 12045
    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int v1, p1, v3

    .line 12046
    .local v1, positionX:I
    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v2, p2, v3

    .line 12047
    .local v2, positionY:I
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 12048
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 12061
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    :cond_4
    :goto_0
    iput-boolean v6, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 12063
    :cond_5
    return-void

    .line 12051
    .restart local v1       #positionX:I
    .restart local v2       #positionY:I
    :cond_6
    :try_start_0
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12053
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in HandleView::updatePosition():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 12056
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12057
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
