.class Lcom/android/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - TRIGGER_STOP_RECORD start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - Stop Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v2

    const-string v3, "Stop recording"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$202(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->closeCamera()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$602(Z)Z

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - TRIGGER_STOP_RECORD end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - STOP_RECORDING_INDICATOR start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - STOP_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown recording state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v2

    const-string v3, "Stop recording"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$202(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - STOP_RECORDING_INDICATOR end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - COUNT_DOWN_SELFTIMER end - mIsUIReady = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    if-ne v1, v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - COUNT_DOWN_SELFTIMER end - storage error"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    if-lez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->canTakePicture()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - COUNT_DOWN_SELFTIMER end - canTakePicture() = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$802(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v2, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    add-int/lit8 v3, v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "HTCCamera"

    const-string v2, "Play Countdown Sound"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_9
    move/from16 v0, v18

    if-ne v9, v0, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - self timer countdown"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$1302(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    sub-long v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v2, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sub-int v2, v17, v9

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v2, v12, v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$922(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v1

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-gez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v2, 0x320

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v2, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_2

    :cond_c
    const-string v1, "HTCCamera"

    const-string v2, "StartSelfTimer: Time Out"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - self timer timeout, take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;

    move-result-object v2

    const-string v3, "Taking picture"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$1302(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "HTCCamera"

    const-string v2, "Play Countdown Sound"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v1, "HTCCamera"

    const-string v2, "Freeze UI - self timer timeout, take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IUIRotationManager;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IUIRotationManager;

    move-result-object v2

    const-string v3, "Taking picture"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$1602(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$1702(Lcom/android/camera/HTCCamera;Z)Z

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->deactivate()V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SHOW_TOAST_UI start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->show()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x277d

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_10
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SHOW_TOAST_UI end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - MSG_SHOW_TOAST_UI_DONE start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/HTCCamera;->m_IsToastShownEnd:Z

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - MSG_SHOW_TOAST_UI_DONE end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_11
    :goto_3
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_TOAST - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    goto :goto_3

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_13

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_13
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_3D_HINT - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/camera/rotate/RotateToast;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x277c

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-string v3, ""

    const v4, 0x186a0

    invoke-static {v2, v3, v4}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$1802(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;

    goto :goto_4

    :sswitch_9
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onPreviewStarted()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$2002(Lcom/android/camera/HTCCamera;Z)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$600()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    invoke-static/range {v1 .. v7}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)I

    move-result v2

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)I

    move-result v2

    iput v2, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_17
    const-string v1, "HTCCamera"

    const-string v2, "mIsPreviewReady = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$2002(Lcom/android/camera/HTCCamera;Z)Z

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    :goto_5
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MENU_3D_CAMERA_SWITCH] m3DButtonStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    goto :goto_5

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    check-cast v1, Lcom/android/camera/CameraMode;

    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CameraMode;J)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;J)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->showFocusEnd()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->showPowerRestrict()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x1e -> :sswitch_3
        0x24 -> :sswitch_4
        0x25 -> :sswitch_7
        0x2d -> :sswitch_9
        0x38 -> :sswitch_a
        0x48 -> :sswitch_b
        0x49 -> :sswitch_c
        0x4f -> :sswitch_d
        0x50 -> :sswitch_8
        0x52 -> :sswitch_0
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x2776 -> :sswitch_e
        0x277a -> :sswitch_f
        0x277b -> :sswitch_10
        0x277c -> :sswitch_5
        0x277d -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
