.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# instance fields
.field private mNotChangeTextSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 50
    .local v2, layout:Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 52
    .local v3, lineCount:I
    if-lez v3, :cond_1

    .line 53
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 54
    .local v1, ellipsisCount:I
    if-lez v1, :cond_1

    .line 55
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 56
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 58
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/R$styleable;->TextAppearance:[I

    const v8, 0x1010041

    const v9, 0x1030044

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 63
    .local v4, textSize:I
    if-eqz v4, :cond_0

    .line 65
    iget-boolean v5, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    if-nez v5, :cond_0

    .line 66
    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 74
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #ellipsisCount:I
    .end local v3           #lineCount:I
    .end local v4           #textSize:I
    :cond_1
    return-void
.end method

.method public setNotChangeTextSize()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    .line 84
    return-void
.end method
