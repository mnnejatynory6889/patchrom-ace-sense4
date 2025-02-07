.class public Lcom/htc/quickselection/HtcQuickSelectionWindow;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;,
        Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;,
        Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
    }
.end annotation


# static fields
.field private static ARROW_HEIGHT:I = 0x0

.field private static DENSITY:F = 0.0f

.field private static ICON_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_DEBUG:Z = false

.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcQuickSelect"

.field private static final TOKEN_DATA:I = 0x1

.field static final TRACE_LAUNCH:Z = false

.field static final TRACE_TAG:Ljava/lang/String; = "quickselection"

.field private static mANCHOR_HEIGHT:I


# instance fields
.field private DividerDrawable:Landroid/widget/ImageView;

.field private isPasteWindow:Z

.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mCircularProgress:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mHasData:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private mHorizontalMargin:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsNotEnoughSpace:Z

.field private mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

.field private mMakePrimary:Z

.field private mMode:I

.field private mNeedFineTune:Z

.field private mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowing:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWasDownArrow:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->LOCAL_DEBUG:Z

    .line 547
    const/4 v0, 0x0

    sput v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    .line 548
    const/4 v0, 0x0

    sput v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mRect:Landroid/graphics/Rect;

    .line 62
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    .line 64
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    .line 76
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHasValidSocial:Z

    .line 77
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHasData:Z

    .line 78
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    .line 98
    iput-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    .line 100
    iput v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowRecycled:I

    .line 101
    iput v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I

    .line 102
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    .line 107
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    .line 366
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPasteWindow:Z

    .line 546
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    .line 616
    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    .line 743
    iput-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    .line 119
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    .line 121
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 124
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 126
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x20200ea

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 127
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020093

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 129
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    .line 131
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x20501cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowHoriz:I

    .line 133
    const v3, 0x20501ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowVert:I

    .line 134
    const v3, 0x20501cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowTouch:I

    .line 136
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_2

    .line 140
    :cond_0
    const/high16 v3, 0x4240

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    .line 144
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 145
    .local v1, outSize:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 146
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    .line 147
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    .line 151
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020169

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    .line 152
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020168

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 153
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020167

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    .line 156
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020165

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    .line 170
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const v4, 0x20a000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 171
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/htc/quickselection/HtcQuickSelectionWindow$1;

    invoke-direct {v4, p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$1;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 180
    const v3, 0x10804bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    .line 186
    const v3, 0x402003d

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    return-void

    .line 142
    .end local v1           #outSize:Landroid/graphics/Point;
    :cond_2
    const/high16 v3, 0x4200

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    goto/16 :goto_0

    .line 187
    .restart local v1       #outSize:Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    .line 189
    const/high16 v3, 0x4270

    sget v4, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    goto :goto_1
.end method

.method private dismissInternal()V
    .locals 4

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    .line 608
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcQuickSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeception while dismiss PopupWindow \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private inflateAction(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/view/View;
    .locals 9
    .parameter "actionSet"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->obtainView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/quickselection/HtcCheckableImageView;

    .line 200
    .local v2, view:Lcom/htc/quickselection/HtcCheckableImageView;
    invoke-virtual {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->count()I

    move-result v5

    if-le v5, v3, :cond_0

    move v1, v3

    .line 202
    .local v1, isActionSet:Z
    :goto_0
    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    .line 205
    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 206
    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    sget v7, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v8, v5, v8, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablePadding(I)V

    .line 213
    :goto_1
    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {v2, p0}, Lcom/htc/quickselection/HtcCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v2, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_2
    return-object v2

    .end local v1           #isActionSet:Z
    :cond_0
    move v1, v4

    .line 200
    goto :goto_0

    .line 211
    .restart local v1       #isActionSet:Z
    :cond_1
    invoke-virtual {v2, v8, v8, v8, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p1, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    move-result-object v0

    .line 219
    .local v0, action:Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;
    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/quickselection/HtcCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->getID()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 222
    iget-object v5, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 223
    invoke-virtual {v2, v3}, Lcom/htc/quickselection/HtcCheckableImageView;->setLines(I)V

    .line 224
    iget-object v3, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/quickselection/HtcCheckableImageView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 227
    :cond_3
    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setLines(I)V

    goto :goto_2
.end method

.method private isPositionVisible(III)Z
    .locals 3
    .parameter "y"
    .parameter "height"
    .parameter "showArrow"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    if-le v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    const v0, 0x20200ea

    if-eq p3, v0, :cond_3

    :cond_2
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    const v0, 0x2020093

    if-ne p3, v0, :cond_4

    .line 541
    :cond_3
    const/4 v0, 0x0

    .line 543
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 5

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 690
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 691
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x209004b

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 693
    :cond_0
    monitor-exit p0

    return-object v0

    .line 689
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private preparePopupWindow()Landroid/widget/PopupWindow;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x2090076

    const/4 v4, 0x0

    .line 240
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 243
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 244
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 245
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, ll:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 252
    .local v2, popup:Landroid/widget/PopupWindow;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 254
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 255
    return-object v2

    .line 247
    .end local v0           #ll:Landroid/widget/FrameLayout;
    .end local v2           #popup:Landroid/widget/PopupWindow;
    .restart local v1       #parent:Landroid/view/ViewParent;
    :cond_2
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 679
    iget v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

    .line 656
    :goto_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 664
    iput-boolean v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    .line 667
    iput-boolean v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    .line 671
    return-void
.end method

.method private setResolveVisible(ZLcom/htc/quickselection/HtcCheckableImageView;)V
    .locals 0
    .parameter "visible"
    .parameter "actionView"

    .prologue
    .line 646
    return-void
.end method

.method private showArrow(II)V
    .locals 9
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v7, 0x20200ea

    .line 558
    if-ne p1, v7, :cond_1

    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 559
    .local v6, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v7, :cond_2

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 561
    .local v2, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 562
    .local v0, arrowWidth:I
    shr-int/lit8 v1, v0, 0x1

    .line 563
    .local v1, half_arrorWidth:I
    iget v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowHoriz:I

    shr-int/lit8 v3, v7, 0x1

    .line 565
    .local v3, left_right:I
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 566
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 567
    .local v5, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int/2addr v7, v1

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v4, v7, v1

    .line 572
    .local v4, newLeft:I
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v7, v4, :cond_0

    .line 575
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 576
    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 578
    :cond_0
    return-void

    .line 558
    .end local v0           #arrowWidth:I
    .end local v1           #half_arrorWidth:I
    .end local v2           #hideArrow:Landroid/view/View;
    .end local v3           #left_right:I
    .end local v4           #newLeft:I
    .end local v5           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #showArrow:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 559
    .restart local v6       #showArrow:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private declared-synchronized showInternal(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 19
    .parameter "parent"
    .parameter "anchor"
    .parameter "innerAnimation"

    .prologue
    .line 388
    monitor-enter p0

    const/16 p3, 0x0

    .line 390
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_1

    .line 536
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 395
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 397
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    if-nez v13, :cond_2

    .line 398
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 399
    .local v6, outSize:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 400
    iget v13, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    .line 401
    iget v13, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    .line 407
    .end local v6           #outSize:Landroid/graphics/Point;
    :cond_2
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 408
    .local v5, offsetInWindow:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 410
    const/4 v13, 0x0

    aget v13, v5, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    aget v14, v5, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 413
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_3

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 415
    :cond_3
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/Rect;->right:I

    .line 417
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v1, v13

    .line 418
    .local v1, cx:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_a

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v13

    .line 421
    .local v9, ty:F
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/RelativeLayout;->measure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 428
    .local v10, width:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    .line 430
    .local v3, height:I
    const v8, 0x2020093

    .line 432
    .local v8, showArrow:I
    float-to-int v13, v1

    shr-int/lit8 v14, v10, 0x1

    sub-int v11, v13, v14

    .line 433
    .local v11, x:I
    if-gez v11, :cond_b

    .line 434
    const/4 v11, 0x0

    .line 438
    :cond_5
    :goto_3
    float-to-int v13, v9

    sub-int/2addr v13, v3

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int v12, v13, v14

    .line 455
    .local v12, y:I
    const/4 v4, 0x0

    .line 456
    .local v4, needClipping:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_6

    .line 457
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    .line 458
    const v8, 0x20200ea

    .line 459
    add-int v13, v12, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sget v15, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v14, v15

    if-le v13, v14, :cond_6

    .line 460
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v3

    if-le v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPasteWindow:Z

    if-nez v13, :cond_c

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    shr-int/lit8 v14, v3, 0x1

    sub-int v12, v13, v14

    .line 463
    const/4 v4, 0x1

    .line 476
    :cond_6
    :goto_4
    if-eqz v4, :cond_8

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-le v13, v11, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v13, Landroid/graphics/Rect;->left:I

    .line 484
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-le v13, v12, :cond_f

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 492
    :cond_8
    :goto_6
    if-eqz p3, :cond_11

    .line 493
    const v13, 0x20200ea

    if-ne v8, v13, :cond_10

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x2030110

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 501
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    if-eqz v13, :cond_9

    const v13, 0x2020093

    if-ne v8, v13, :cond_9

    .line 503
    sget v13, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    add-int/2addr v13, v12

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    .line 507
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v8}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPositionVisible(III)Z

    move-result v13

    if-nez v13, :cond_12

    .line 508
    const-string v13, "TAG"

    const-string v14, "The position is out of current visible rectangle."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 388
    .end local v1           #cx:F
    .end local v3           #height:I
    .end local v4           #needClipping:Z
    .end local v5           #offsetInWindow:[I
    .end local v8           #showArrow:I
    .end local v9           #ty:F
    .end local v10           #width:I
    .end local v11           #x:I
    .end local v12           #y:I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 418
    .restart local v1       #cx:F
    .restart local v5       #offsetInWindow:[I
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v9, v13

    goto/16 :goto_1

    .line 423
    .restart local v9       #ty:F
    :catch_0
    move-exception v2

    .line 424
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "HtcQuickSelect"

    const-string v14, "measure error!"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 435
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #height:I
    .restart local v8       #showArrow:I
    .restart local v10       #width:I
    .restart local v11       #x:I
    :cond_b
    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    if-le v13, v14, :cond_5

    .line 436
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    sub-int v11, v13, v10

    goto/16 :goto_3

    .line 466
    .restart local v4       #needClipping:Z
    .restart local v12       #y:I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x3fe0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_d

    .line 467
    float-to-int v13, v9

    sub-int/2addr v13, v3

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int v12, v13, v14

    .line 468
    const v8, 0x2020093

    goto/16 :goto_4

    .line 470
    :cond_d
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    goto/16 :goto_4

    .line 480
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int v14, v11, v10

    if-ge v13, v14, :cond_7

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v11, v13, v10

    goto/16 :goto_5

    .line 486
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int v14, v12, v3

    if-ge v13, v14, :cond_8

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v13, v3

    goto/16 :goto_6

    .line 496
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x203010f

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_7

    .line 498
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_7

    .line 512
    :cond_12
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v11, v12, v10, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    if-eqz p3, :cond_13

    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isClippingEnabled()Z

    move-result v13

    if-eqz v13, :cond_15

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    sub-int/2addr v14, v10

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 534
    .local v7, px:I
    :goto_9
    int-to-float v13, v7

    sub-float v13, v1, v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->showArrow(II)V

    goto/16 :goto_0

    .line 522
    .end local v7           #px:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 527
    if-eqz p3, :cond_13

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :cond_15
    move v7, v11

    .line 531
    goto :goto_9
.end method


# virtual methods
.method public HideDescription()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 353
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0
.end method

.method public ShowDescription(Ljava/lang/String;)V
    .locals 4
    .parameter "description"

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 309
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 313
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0
.end method

.method public addActionSet(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)V
    .locals 8
    .parameter "actionSet"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->inflateAction(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/view/View;

    move-result-object v4

    .line 266
    .local v4, v:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 268
    .local v0, childSize:I
    const/4 v5, 0x2

    if-le v0, v5, :cond_0

    .line 269
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    .line 270
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    const/4 v3, -0x2

    .line 272
    .local v3, layoutW:I
    const/4 v2, -0x1

    .line 273
    .local v2, layoutH:I
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DividerDrawable:Landroid/widget/ImageView;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 277
    .end local v2           #layoutH:I
    .end local v3           #layoutW:I
    :cond_0
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 278
    .local v1, childSize2:I
    iget-object v5, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 280
    return-void
.end method

.method public addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "icon"
    .parameter "listener"
    .parameter "description"

    .prologue
    .line 293
    new-instance v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V

    .line 294
    .local v0, oneAction:Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->AddAction(Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)Z

    .line 295
    invoke-virtual {v0, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    move-result-object v1

    iput-object p4, v1, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    .line 297
    invoke-virtual {p0, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addActionSet(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)V

    .line 298
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doNotShowInMiddle(Z)V
    .locals 0
    .parameter "IsPasteWindow"

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPasteWindow:Z

    .line 370
    return-void
.end method

.method public declared-synchronized fakeDismiss()V
    .locals 2

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    .line 584
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 585
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 709
    iput-boolean p2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    .line 710
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 699
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    invoke-interface {v0, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;->onOutsideTouched(Landroid/view/MotionEvent;)V

    .line 737
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->resetTrack()V

    .line 359
    return-void
.end method

.method public setFineTune(Z)V
    .locals 0
    .parameter "needFineTune"

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    .line 552
    return-void
.end method

.method public setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 747
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    .line 748
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "parent"
    .parameter "anchor"

    .prologue
    .line 373
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 4
    .parameter "parent"
    .parameter "anchor"
    .parameter "innerAnimation"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->showInternal(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "HtcQuickSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeception while show PopupWindow \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showDescriptionWithProgress(Ljava/lang/String;Z)V
    .locals 5
    .parameter "description"
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 326
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    if-eqz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 336
    :goto_1
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 338
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method
