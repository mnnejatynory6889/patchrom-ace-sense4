.class Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;
.super Landroid/os/Handler;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HookMessageHandler"
.end annotation


# instance fields
.field private msgNum:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 2947
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2944
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2948
    return-void
.end method

.method private enqueueMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x12

    .line 2973
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2974
    :try_start_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2975
    .local v2, set:Ljava/util/HashMap;
    if-nez v2, :cond_0

    .line 2976
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #set:Ljava/util/HashMap;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2977
    .restart local v2       #set:Ljava/util/HashMap;
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2980
    .local v1, oldOpObj:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 2990
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #oldOpObj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2991
    .local v0, oldOpCode:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_0

    .line 3010
    monitor-exit v4

    .line 3023
    .end local v0           #oldOpCode:I
    :goto_0
    return-void

    .line 2993
    .restart local v0       #oldOpCode:I
    :sswitch_0
    if-eq v0, v6, :cond_1

    .line 2994
    const/16 v3, 0x17

    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 3021
    .end local v0           #oldOpCode:I
    :cond_1
    :goto_1
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3022
    monitor-exit v4

    goto :goto_0

    .end local v2           #set:Ljava/util/HashMap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2998
    .restart local v0       #oldOpCode:I
    .restart local v2       #set:Ljava/util/HashMap;
    :sswitch_1
    if-ne v0, v6, :cond_1

    .line 2999
    const/16 v3, 0x12

    :try_start_1
    iput v3, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 3003
    :sswitch_2
    if-ne v0, v6, :cond_1

    .line 3004
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3005
    monitor-exit v4

    goto :goto_0

    .line 3012
    .end local v0           #oldOpCode:I
    .restart local v1       #oldOpObj:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$200()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 3019
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2991
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method private static sendIntent()V
    .locals 24

    .prologue
    .line 3033
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 3034
    :try_start_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 3035
    .local v14, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 3036
    const-string v3, "SQLiteDatabase"

    const-string/jumbo v5, "no any recorded row id found in sqlite change event"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    monitor-exit v23

    .line 3073
    :goto_0
    return-void

    .line 3040
    :cond_0
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 3044
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 3045
    .local v20, idStr:Ljava/lang/StringBuilder;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3046
    .local v22, tableName:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3048
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 3049
    .local v21, ids:Ljava/util/HashMap;
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 3050
    .local v19, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 3051
    .local v18, id:Ljava/util/Map$Entry;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3071
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #id:Ljava/util/Map$Entry;
    .end local v19           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v20           #idStr:Ljava/lang/StringBuilder;
    .end local v21           #ids:Ljava/util/HashMap;
    .end local v22           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3054
    .restart local v15       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .restart local v20       #idStr:Ljava/lang/StringBuilder;
    .restart local v21       #ids:Ljava/util/HashMap;
    .restart local v22       #tableName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3055
    const/16 v3, 0x24

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.kii.SQLITE_CHANGE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3060
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3062
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 3063
    .local v2, iActivityManager:Landroid/app/IActivityManager;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3065
    .end local v2           #iActivityManager:Landroid/app/IActivityManager;
    :catch_0
    move-exception v13

    .line 3066
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot send intent for sqlite change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3070
    .end local v4           #intent:Landroid/content/Intent;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v20           #idStr:Ljava/lang/StringBuilder;
    .end local v21           #ids:Ljava/util/HashMap;
    .end local v22           #tableName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3071
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, -0x1

    .line 2951
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    .line 2952
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2953
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2955
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2956
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->enqueueMessage(Landroid/os/Message;)V

    .line 2967
    :goto_0
    return-void

    .line 2958
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    if-nez v0, :cond_2

    .line 2960
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendIntent()V

    goto :goto_0

    .line 2963
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2964
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sendIntent(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 3080
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.kii.SQLITE_CHANGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3082
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3085
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3086
    .local v0, iActivityManager:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    .end local v0           #iActivityManager:Landroid/app/IActivityManager;
    :goto_0
    return-void

    .line 3087
    :catch_0
    move-exception v11

    .line 3088
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "SQLiteDatabase"

    const-string v3, "Cannot send sqlite update notificaiton Intent successfully"

    invoke-static {v1, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
