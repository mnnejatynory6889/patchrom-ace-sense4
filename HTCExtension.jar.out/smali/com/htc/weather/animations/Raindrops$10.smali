.class Lcom/htc/weather/animations/Raindrops$10;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Raindrops.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Raindrops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Raindrops;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Raindrops;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 697
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 698
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    const v2, 0x208039e

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v1, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 701
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit16 v2, v2, 0xda

    iget-object v3, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    add-int/lit16 v3, v3, 0xd5

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    :goto_0
    return-object v0

    .line 706
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit16 v2, v2, 0xda

    iget-object v3, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    add-int/lit16 v3, v3, 0xd5

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 6

    .prologue
    .line 716
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 730
    .local v1, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    const-wide/16 v2, 0x12

    const-wide/16 v4, 0x46

    invoke-virtual/range {v0 .. v5}, Lcom/htc/weather/animations/Raindrops;->setRainDrop(Landroid/view/animation/AnimationSet;JJ)V

    .line 731
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 733
    return-object v1
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 738
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 740
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const-wide/16 v3, 0x294

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v2, p0, Lcom/htc/weather/animations/Raindrops$10;->this$0:Lcom/htc/weather/animations/Raindrops;

    iget-wide v6, v2, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    move v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 746
    return-object v8
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method
