.class public Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;
.super Ljava/lang/Object;
.source "BaseContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/BaseContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserHash"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.snprovider"

.field public static final COL_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final COL_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final COL_USER_HASH:Ljava/lang/String; = "user_hash"

.field public static final COL_USER_ID:Ljava/lang/String; = "user_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.sn_rawcontact"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE user_hash (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, account_name TEXT, account_type TEXT,user_hash INTEGER NOT NULL);"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "user_id ASC"

.field public static final FLAG_DELETE:I = 0x3

.field public static final FLAG_INVALID:I = 0x0

.field public static final FLAG_NEW:I = 0x2

.field public static final FLAG_UPDATE:I = 0x1

.field public static final INVALID_HASH:I = -0x1

.field public static final INVALID_RAW_CONTACT_ID:I = -0x1

.field public static final PROJECTIONS:[Ljava/lang/String; = null

.field public static final TABLE_USERHASH:Ljava/lang/String; = "user_hash"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final sStringBuffer:Ljava/lang/StringBuffer;


# instance fields
.field public flag:I

.field public hash:I

.field public rawContactId:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1064
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "user_hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->PROJECTIONS:[Ljava/lang/String;

    .line 1071
    const-string v0, "content://com.htc.socialnetwork.snprovider/user_hashs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    .line 1226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1134
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 1139
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    .line 1211
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .parameter "flag"
    .parameter "userId"
    .parameter "hash"

    .prologue
    const/4 v1, -0x1

    .line 1220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1134
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 1139
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    .line 1221
    iput p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    .line 1222
    iput-object p2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1223
    iput p3, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 1224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "userId"
    .parameter "rawContactId"

    .prologue
    const/4 v1, -0x1

    .line 1214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1134
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 1139
    iput v1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    .line 1215
    iput-object p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1216
    iput p2, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    .line 1217
    return-void
.end method

.method public static varargs makeHash([Ljava/lang/String;)I
    .locals 8
    .parameter "strs"

    .prologue
    const/4 v7, 0x0

    .line 1233
    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1234
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1235
    .local v4, str:Ljava/lang/String;
    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1238
    .local v1, hash:I
    sget-object v5, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1239
    return v1
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    return v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    return v0
.end method

.method public getRawContactId()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1154
    iput p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->flag:I

    .line 1155
    return-void
.end method

.method public setHash(I)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 1186
    iput p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->hash:I

    .line 1187
    return-void
.end method

.method public setRawContactId(I)V
    .locals 0
    .parameter "rawContactId"

    .prologue
    .line 1202
    iput p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->rawContactId:I

    .line 1203
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/htc/opensense/provider/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    .line 1171
    return-void
.end method
