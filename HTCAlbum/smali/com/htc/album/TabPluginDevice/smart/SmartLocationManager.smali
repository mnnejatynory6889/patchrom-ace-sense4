.class public Lcom/htc/album/TabPluginDevice/smart/SmartLocationManager;
.super Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
.source "SmartLocationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDD)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJDD)V"
        }
    .end annotation

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    if-lez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v2, :cond_0

    move-wide/from16 v3, p6

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    invoke-virtual/range {v2 .. v8}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->inRange(JDD)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    const-string v4, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v5, ""

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v3

    move-wide/from16 v4, p6

    move-wide/from16 v6, p6

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    invoke-virtual/range {v3 .. v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJDD)V

    add-int/lit8 v16, v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v15, v16

    :cond_1
    const-wide/16 v12, -0x1

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-virtual/range {v3 .. v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    return-void

    :cond_2
    move-object/from16 v3, v17

    goto :goto_0
.end method

.method protected doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .locals 1

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v0

    return-object v0
.end method
