.class final Lcom/htc/util/contacts/ContactsUtility$2;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lContactId:J

.field final synthetic val$rawId:J


# direct methods
.method constructor <init>(JLandroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1594
    iput-wide p1, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$rawId:J

    iput-object p3, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$lContactId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1596
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->queryEditableAccount()Ljava/util/ArrayList;

    move-result-object v7

    .line 1598
    .local v7, editableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1599
    .local v8, sbSelection:Ljava/lang/StringBuilder;
    const-string v0, " ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v0, " ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v0, " = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    iget-wide v0, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$rawId:J

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1604
    const-string v0, " ) "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    const-string v0, "account_type"

    invoke-static {v0, v7}, Lcom/htc/util/contacts/ContactsUtility;->getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    const-string v0, " ) "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    iget-object v0, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1611
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1612
    sget-boolean v0, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ContactsUtility"

    const-string v1, "importToMyContact null == c return;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    if-eqz v6, :cond_5

    .line 1617
    :try_start_0
    sget-boolean v0, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ContactsUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importToMyContact c.getCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1619
    sget-boolean v0, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ContactsUtility"

    const-string v1, "importToMyContact 0 >= c.getCount() return;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    goto :goto_0

    .line 1623
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    .line 1629
    :cond_5
    iget-object v0, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$lContactId:J

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;J)V

    goto :goto_0

    .line 1623
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1624
    const/4 v6, 0x0

    throw v0
.end method
