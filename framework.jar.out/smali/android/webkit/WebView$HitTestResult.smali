.class public Landroid/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1136
    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebView$HitTestResult;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1087
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView$HitTestResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    return-void
.end method

.method private setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 1143
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 1144
    return-void
.end method

.method private setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1139
    iput p1, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1140
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method
