.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 2119
    return-void
.end method

.method private getSecureBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2125
    if-eqz p2, :cond_0

    move v0, v1

    .line 2126
    .local v0, defInt:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #defInt:I
    :cond_0
    move v0, v2

    .line 2125
    goto :goto_0

    .restart local v0       #defInt:I
    :cond_1
    move v1, v2

    .line 2126
    goto :goto_1
.end method

.method private getSecureLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getNetworkBucketDuration()J
    .locals 3

    .prologue
    .line 2136
    const-string v0, "netstats_network_bucket_duration"

    const-wide/32 v1, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkMaxHistory()J
    .locals 3

    .prologue
    .line 2139
    const-string v0, "netstats_network_max_history"

    const-wide v1, 0x1cf7c5800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersistThreshold()J
    .locals 3

    .prologue
    .line 2133
    const-string v0, "netstats_persist_threshold"

    const-wide/32 v1, 0x200000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollInterval()J
    .locals 3

    .prologue
    .line 2130
    const-string v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagMaxHistory()J
    .locals 3

    .prologue
    .line 2148
    const-string v0, "netstats_tag_max_history"

    const-wide v1, 0x9a7ec800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeCacheMaxAge()J
    .locals 2

    .prologue
    .line 2151
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getUidBucketDuration()J
    .locals 3

    .prologue
    .line 2142
    const-string v0, "netstats_uid_bucket_duration"

    const-wide/32 v1, 0x6ddd00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidMaxHistory()J
    .locals 3

    .prologue
    .line 2145
    const-string v0, "netstats_uid_max_history"

    const-wide v1, 0x1cf7c5800L

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getSecureLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
