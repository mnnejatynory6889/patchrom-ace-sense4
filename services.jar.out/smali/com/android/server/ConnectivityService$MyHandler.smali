.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5166
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 5167
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5168
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 5173
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    .line 5639
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 5178
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    const/16 v29, 0x12d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    const/4 v14, 0x1

    .line 5180
    .local v14, isHtcLateUpdateNetworkState:Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 5181
    .local v12, info:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    .line 5208
    .local v25, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x12

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5214
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v24

    .line 5224
    .local v24, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v28

    aget-object v28, v28, v25

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    aget-object v28, v28, v25

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    aget-object v28, v28, v25

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v28, v0

    const/16 v29, 0x12

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 5230
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Dropping ConnectivityChange for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5235
    if-eqz v14, :cond_0

    .line 5236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5178
    .end local v12           #info:Landroid/net/NetworkInfo;
    .end local v14           #isHtcLateUpdateNetworkState:Z
    .end local v24           #state:Landroid/net/NetworkInfo$State;
    .end local v25           #type:I
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 5241
    .restart local v12       #info:Landroid/net/NetworkInfo;
    .restart local v14       #isHtcLateUpdateNetworkState:Z
    .restart local v24       #state:Landroid/net/NetworkInfo$State;
    .restart local v25       #type:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v28

    aput-object v24, v28, v25

    .line 5256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ConnectivityChange for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", default="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5276
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    and-int/lit8 v28, v28, 0x3f

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v29

    and-int/lit8 v29, v29, 0x3f

    shl-int/lit8 v29, v29, 0x6

    or-int v28, v28, v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v29

    shl-int/lit8 v29, v29, 0xc

    or-int v11, v28, v29

    .line 5280
    .local v11, eventLogParam:I
    const v28, 0xc364

    move/from16 v0, v28

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5283
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 5286
    if-eqz v14, :cond_4

    .line 5287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5290
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 5337
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1900()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 5338
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$2000()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mActiveDefaultNetwork: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5291
    :cond_6
    sget-object v28, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 5293
    if-eqz v14, :cond_7

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5297
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 5298
    :cond_8
    sget-object v28, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5300
    if-eqz v14, :cond_9

    .line 5301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5311
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_2

    .line 5315
    :cond_a
    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 5316
    if-nez v14, :cond_5

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v12, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_2

    .line 5320
    :cond_b
    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 5328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService$DualMode;->access$1600(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 5329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleConnectDualMode(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v12, v14}, Lcom/android/server/ConnectivityService$DualMode;->access$1700(Lcom/android/server/ConnectivityService$DualMode;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_2

    .line 5332
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v12, v14}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_2

    .line 5343
    .end local v11           #eventLogParam:I
    .end local v12           #info:Landroid/net/NetworkInfo;
    .end local v14           #isHtcLateUpdateNetworkState:Z
    .end local v24           #state:Landroid/net/NetworkInfo$State;
    .end local v25           #type:I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 5354
    .restart local v12       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v12, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .line 5367
    .end local v12           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 5369
    .restart local v12       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x18

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5374
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v28

    if-eqz v28, :cond_0

    .line 5375
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v28

    sget-object v29, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_d

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v28

    sget-object v29, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v29

    aget-object v28, v28, v29

    if-eqz v28, :cond_e

    .line 5379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v29

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 5381
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 5382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v12, v1}, Lcom/android/server/connectivity/Tethering;->htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_0

    .line 5388
    .end local v12           #info:Landroid/net/NetworkInfo;
    :sswitch_4
    const/4 v5, 0x0

    .line 5389
    .local v5, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 5390
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 5392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v5

    .line 5395
    :cond_f
    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5396
    if-eqz v5, :cond_0

    .line 5397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NetTransition Wakelock for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " released by timeout"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5395
    :catchall_0
    move-exception v28

    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v28

    .line 5405
    .end local v5           #causedBy:Ljava/lang/String;
    :sswitch_5
    sget-short v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v29, 0x94

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    sget-short v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v29, 0xaf

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    sget-short v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    :cond_10
    sget-short v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v29, 0x50

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 5409
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 5411
    .restart local v12       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x2d

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5416
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v28

    if-eqz v28, :cond_0

    .line 5417
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/net/ConnectivityManager;->isSubTypeCDMA(I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 5418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    const/16 v29, 0x10

    aget-object v28, v28, v29

    const-string v29, "exclusive"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5420
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    const/16 v29, 0x10

    aget-object v28, v28, v29

    const-string v29, "apn"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5427
    .end local v12           #info:Landroid/net/NetworkInfo;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 5428
    .local v27, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 5432
    .end local v27           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 5433
    .local v18, netType:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 5434
    .local v7, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 5439
    .end local v7           #condition:I
    .end local v18           #netType:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 5440
    .restart local v18       #netType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 5441
    .local v23, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    move/from16 v2, v23

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 5446
    .end local v18           #netType:I
    .end local v23           #sequence:I
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5447
    .local v21, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 5452
    .end local v21           #preference:I
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const/4 v10, 0x1

    .line 5453
    .local v10, enabled:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v10}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 5452
    .end local v10           #enabled:Z
    :cond_12
    const/4 v10, 0x0

    goto :goto_3

    .line 5458
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 5463
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    const/16 v16, 0x1

    .line 5464
    .local v16, met:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v16

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 5463
    .end local v16           #met:Z
    :cond_13
    const/16 v16, 0x0

    goto :goto_4

    .line 5469
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 5476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V
    invoke-static/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 5483
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/content/Intent;

    .line 5484
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5488
    .end local v13           #intent:Landroid/content/Intent;
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5489
    .local v19, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    const/4 v10, 0x1

    .line 5490
    .restart local v10       #enabled:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v1, v10}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 5489
    .end local v10           #enabled:Z
    :cond_14
    const/4 v10, 0x0

    goto :goto_5

    .line 5498
    .end local v19           #networkType:I
    :sswitch_10
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "issue reconnect to special network:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5500
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v22

    .line 5501
    .local v22, result:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 5502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    new-instance v30, Ljava/lang/Boolean;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v30, v28, v29

    .line 5503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_0

    .line 5504
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1900()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 5505
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$2000()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to reconnect "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    :cond_15
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v15, v0, [Ljava/lang/Object;

    .line 5509
    .local v15, mParams:[Ljava/lang/Object;
    const/16 v28, 0x0

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Ljava/lang/Integer;-><init>(I)V

    aput-object v29, v15, v28

    .line 5510
    const/16 v28, 0x1

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Ljava/lang/Integer;-><init>(I)V

    aput-object v29, v15, v28

    .line 5511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x33

    move-object/from16 v0, v28

    move/from16 v1, v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5515
    .end local v15           #mParams:[Ljava/lang/Object;
    .end local v22           #result:Z
    :catch_0
    move-exception v28

    goto/16 :goto_0

    .line 5518
    :sswitch_11
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "issue teardown to special network:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " from ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 5521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/NetworkStateTracker;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    .line 5527
    :catch_1
    move-exception v28

    goto/16 :goto_0

    .line 5524
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput-object v30, v28, v29

    .line 5525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->teardown()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 5533
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 5534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService$DualMode;->access$1600(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 5536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x11

    const-string v30, ""

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5538
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[Dual mode]:receive EVENT_DUAL_MODE_SWITCH: mActiveDefaultNetwork("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v30, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    const-string v28, "ConnectivityService"

    const-string v29, "[Dual mode]:start hanleDualModeSwitch()"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleDualModeSwitch(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$DualMode;->access$3800(Lcom/android/server/ConnectivityService$DualMode;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5553
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 5554
    .restart local v12       #info:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1a

    .line 5555
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 5557
    .local v6, changedNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x10

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    aget-object v28, v28, v6

    if-eqz v28, :cond_1a

    .line 5563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    aget-object v28, v28, v6

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    aget-object v28, v28, v6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    aget-object v28, v28, v6

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v28

    if-eqz v28, :cond_18

    .line 5566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v29

    aget-object v29, v29, v6

    invoke-interface/range {v29 .. v29}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v28, v6

    .line 5567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v28

    aget-object v28, v28, v6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_18

    .line 5568
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1900()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 5569
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$2000()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to reconnect avaliable net : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x34

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5577
    :cond_18
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v28

    if-nez v28, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/IWifiManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 5579
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5586
    .end local v6           #changedNetType:I
    :cond_1a
    :goto_6
    const/16 v26, 0x0

    .line 5588
    .local v26, typeName:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v29

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 5590
    :goto_7
    new-instance v13, Landroid/content/Intent;

    const-string v28, "android.net.conn.htcNetworkAvalibilityChange"

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5591
    .restart local v13       #intent:Landroid/content/Intent;
    if-eqz v26, :cond_1b

    .line 5592
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5595
    :cond_1b
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$4000()Z

    move-result v28

    if-nez v28, :cond_1c

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$4100()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 5596
    :cond_1c
    const-string v28, "networkInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    #calls: Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5603
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5581
    .end local v13           #intent:Landroid/content/Intent;
    .end local v26           #typeName:Ljava/lang/String;
    .restart local v6       #changedNetType:I
    :catch_2
    move-exception v8

    .line 5582
    .local v8, e:Landroid/os/RemoteException;
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[tether] error to getHotspotEnabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5599
    .end local v6           #changedNetType:I
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v26       #typeName:Ljava/lang/String;
    :cond_1d
    const-string v28, "networkInfo"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8

    .line 5609
    .end local v12           #info:Landroid/net/NetworkInfo;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v26           #typeName:Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/ConnectivityService;->handleSystemReady()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 5617
    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 5618
    .local v20, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileDataPhoneType(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 5623
    .end local v20           #phoneType:I
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 5624
    .local v17, mobileType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    const/4 v9, 0x1

    .line 5625
    .local v9, enable:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    aget-object v28, v28, v17

    check-cast v28, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/net/MobileDataStateTracker;->setUserDataEnableDualGsm(Z)V

    .line 5626
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1900()Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 5627
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$2000()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setUserDataEnableDualGsm: mobileType= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " enable= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5630
    :cond_1e
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v15, v0, [Ljava/lang/Object;

    .line 5631
    .restart local v15       #mParams:[Ljava/lang/Object;
    const/16 v28, 0x0

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v29, v15, v28

    .line 5632
    const/16 v28, 0x1

    new-instance v29, Ljava/lang/Boolean;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v29, v15, v28

    .line 5633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    const/16 v29, 0x77

    move-object/from16 v0, v28

    move/from16 v1, v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5624
    .end local v9           #enable:Z
    .end local v15           #mParams:[Ljava/lang/Object;
    :cond_1f
    const/4 v9, 0x0

    goto :goto_9

    .line 5589
    .end local v17           #mobileType:I
    .restart local v12       #info:Landroid/net/NetworkInfo;
    .restart local v26       #typeName:Ljava/lang/String;
    :catch_3
    move-exception v28

    goto/16 :goto_7

    .line 5173
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
        0x65 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6b -> :sswitch_a
        0x6c -> :sswitch_4
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x73 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_14
        0x76 -> :sswitch_15
        0x77 -> :sswitch_16
        0x12d -> :sswitch_1
        0x12e -> :sswitch_13
        0x12f -> :sswitch_12
        0x130 -> :sswitch_5
        0x131 -> :sswitch_0
    .end sparse-switch
.end method
