.class public Lcom/htc/weather/animations/FallingIce;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "FallingIce.java"


# instance fields
.field private fallIce01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallIce02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 41
    new-instance v0, Lcom/htc/weather/animations/FallingIce$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$1;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 124
    new-instance v0, Lcom/htc/weather/animations/FallingIce$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$2;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 206
    new-instance v0, Lcom/htc/weather/animations/FallingIce$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$3;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 1
    .parameter "context"
    .parameter "env"
    .parameter "shift_x"
    .parameter "shift_y"
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "alpha"
    .parameter "delay"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 41
    new-instance v0, Lcom/htc/weather/animations/FallingIce$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$1;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 124
    new-instance v0, Lcom/htc/weather/animations/FallingIce$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$2;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 206
    new-instance v0, Lcom/htc/weather/animations/FallingIce$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingIce$3;-><init>(Lcom/htc/weather/animations/FallingIce;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingIce;->fallIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 28
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/FallingIce;->fallIce01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/FallingIce;->fallIce02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/FallingIce;->fallIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method
