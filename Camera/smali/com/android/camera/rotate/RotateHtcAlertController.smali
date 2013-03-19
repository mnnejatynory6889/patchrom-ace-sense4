.class public Lcom/android/camera/rotate/RotateHtcAlertController;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;,
        Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static current_orientation:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sput v0, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RotateHtcDialogController"

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleDivider:Z

    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/rotate/RotateHtcAlertController$1;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/rotate/RotateHtcAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13

    const/16 v12, 0xf0

    const/4 v11, 0x0

    const/16 v10, 0x1e0

    const/16 v8, 0x140

    const/4 v9, 0x1

    const v6, 0x3f333333

    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v12, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_3

    const v6, 0x3f028f5c

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v8, 0x202

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x2020001

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const v6, 0x3f028f5c

    goto :goto_0

    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v10, :cond_8

    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_7

    const v6, 0x3ee66666

    goto :goto_0

    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0

    :cond_8
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_9

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v10, :cond_a

    :cond_9
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_c

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_c

    :cond_a
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_b

    const v6, 0x3ec28f5c

    goto :goto_0

    :cond_b
    const v6, 0x3edc28f6

    goto :goto_0

    :cond_c
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_d

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x3c0

    if-eq v7, v8, :cond_e

    :cond_d
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x3c0

    if-ne v7, v8, :cond_10

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_10

    :cond_e
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_f

    const v6, 0x3eb91687

    goto/16 :goto_0

    :cond_f
    const v6, 0x3f35c28f

    goto/16 :goto_0

    :cond_10
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_11

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x500

    if-eq v7, v8, :cond_12

    :cond_11
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x500

    if-ne v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_2

    :cond_12
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_13

    const/high16 v6, 0x3ee0

    goto/16 :goto_0

    :cond_13
    const v6, 0x3e958e22

    goto/16 :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    const-string v20, "com.htc.R.styleable.AlertDialog_fullDark"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_full_dark"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_1

    const-string v20, "com.htc.R.styleable.AlertDialog_topDark"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_top_dark"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    const-string v20, "com.htc.R.styleable.AlertDialog_centerDark"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_center_dark"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v20, "com.htc.R.styleable.AlertDialog_bottomDark"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_bottom_dark"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    const-string v20, "com.htc.R.styleable.AlertDialog_fullBright"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_full_bright"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    const-string v20, "com.htc.R.styleable.AlertDialog_topBright"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_top_bright"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    const-string v20, "com.htc.R.styleable.AlertDialog_centerBright"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_center_bright"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    const-string v20, "com.htc.R.styleable.AlertDialog_bottomBright"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_bottom_bright"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    const-string v20, "com.htc.R.styleable.AlertDialog_bottomMedium"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_bottom_medium"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    const-string v20, "com.htc.R.styleable.AlertDialog_centerMedium"

    invoke-static/range {v20 .. v20}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v20

    const-string v21, "com.htc.R.drawable.popup_center_medium"

    invoke-static/range {v21 .. v21}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    if-eqz p6, :cond_a

    aput-object p1, v19, v14

    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    :cond_b
    aput-object p2, v19, v14

    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    if-eqz p3, :cond_c

    aput-object p3, v19, v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    :cond_c
    if-eqz p4, :cond_d

    aput-object p7, v19, v14

    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    :cond_d
    const/4 v15, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_13

    aget-object v18, v19, v14

    if-nez v18, :cond_e

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_e
    if-eqz v12, :cond_f

    if-nez v15, :cond_11

    if-eqz v11, :cond_10

    move/from16 v20, v16

    :goto_2
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    const/4 v15, 0x1

    :cond_f
    move-object/from16 v12, v18

    aget-boolean v11, v13, v14

    goto :goto_1

    :cond_10
    move/from16 v20, v17

    goto :goto_2

    :cond_11
    if-eqz v11, :cond_12

    move/from16 v20, v6

    :goto_4
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_12
    move/from16 v20, v7

    goto :goto_4

    :cond_13
    if-eqz v12, :cond_14

    if-eqz v15, :cond_18

    if-eqz v11, :cond_17

    if-eqz p4, :cond_16

    :goto_5
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    :cond_15
    return-void

    :cond_16
    move v5, v3

    goto :goto_5

    :cond_17
    move v5, v4

    goto :goto_5

    :cond_18
    if-eqz v11, :cond_19

    :goto_7
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_19
    move v9, v10

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 18

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.button1"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.padding1"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v16, 0x33ffffff

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.button2"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v16, 0x2020002

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x106000c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.button3"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.padding3"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-ne v14, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    :cond_2
    :goto_3
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_3

    const-string v15, "popup_bottom_left_rest"

    const-string v16, "com.htc.R.drawable.popup_bottom_left_rest"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    const-string v15, "popup_bottom_center_rest"

    const-string v16, "com.htc.R.drawable.popup_bottom_center_rest"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v15, "popup_bottom_right_rest"

    const-string v16, "com.htc.R.drawable.popup_bottom_right_rest"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.R.id.padding1"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.R.id.padding2"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.R.id.padding3"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v16, "com.htc.R.id.R.id.padding4"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const-string v15, "com.htc.R.drawable.common_b_div"

    invoke-static {v15}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v15, "com.htc.R.drawable.common_b_div"

    invoke-static {v15}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v15, "com.htc.R.drawable.common_b_div"

    invoke-static {v15}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v15, "com.htc.R.drawable.common_b_div"

    invoke-static {v15}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    if-ne v14, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_5
    if-eqz v14, :cond_11

    const/4 v15, 0x1

    :goto_6
    return v15

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    or-int/2addr v14, v3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    :cond_6
    or-int/2addr v14, v1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    :cond_8
    or-int/2addr v14, v2

    goto/16 :goto_2

    :cond_9
    if-ne v14, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :cond_a
    if-ne v14, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    :cond_b
    if-ne v14, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    if-ne v14, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    const/4 v15, 0x3

    if-ne v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    const/4 v15, 0x5

    if-ne v14, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_f
    const/4 v15, 0x6

    if-ne v14, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    const/4 v15, 0x7

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_6
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v1, "com.htc.R.id.scrollView"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v1, "com.htc.R.id.message"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v1, "com.htc.R.id.scrollView"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10

    const/16 v9, 0x8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v5, "com.htc.R.id.title_template"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v5, "com.htc.R.id.icon"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v5, "com.htc.R.id.alertTitle"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v5, "com.htc.R.id.title_template"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v5, "com.htc.R.id.title_template"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.contentPanel"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupButtons()Z

    move-result v4

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.topPanel"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    const/4 v0, 0x0

    sget-object v11, Lcom/htc/R$styleable;->AlertDialog:[I

    const-string v12, "com.htc.R.attr.alertDialogStyle"

    invoke-static {v12}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.buttonPanel"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v4, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.customPanel"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.custom"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingLeft:I

    iget v11, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingTop:I

    iget v12, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingRight:I

    iget v13, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.titleDivider"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/rotate/RotateHtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const-string v11, "com.htc.R.id.customPanel"

    invoke-static {v11}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 5

    const/high16 v3, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "com.htc.R.layout.alert_dialog"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "com.htc.R.color.transparent"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    :goto_0
    return-void

    :pswitch_1
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    sput p1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleDivider:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingBottom:I

    return-void
.end method

.method public updateOrientation()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrientation called current_orientation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v2, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    sget v2, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_2
    return-void

    :cond_3
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
