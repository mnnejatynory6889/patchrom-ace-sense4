.class public final Landroid/provider/HtcCalendarContract$EventDays;
.super Ljava/lang/Object;
.source "HtcCalendarContract.java"

# interfaces
.implements Landroid/provider/HtcCalendarContract$EventDaysColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcCalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDays"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final SELECTION:Ljava/lang/String; = "selected=1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2035
    const-string v0, "content://com.android.calendar/instances/groupbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcCalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2042
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "startDay"
    .parameter "numDays"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 2061
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 2068
    :goto_0
    return-object v4

    .line 2064
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v7, v0, -0x1

    .line 2065
    .local v7, endDay:I
    sget-object v0, Landroid/provider/HtcCalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2066
    .local v6, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p1

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2067
    int-to-long v0, v7

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2068
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "selected=1"

    const-string/jumbo v5, "startDay"

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method
