.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;
.super Ljava/lang/Object;
.source "SmartFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTime"
.end annotation


# instance fields
.field day:I

.field month:I

.field year:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;)I
    .locals 3

    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    iget v2, p1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    sub-int v0, v1, v2

    if-nez v0, :cond_0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    iget v2, p1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    sub-int v0, v1, v2

    if-nez v0, :cond_0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    iget v2, p1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    sub-int v0, v1, v2

    :cond_0
    return v0
.end method