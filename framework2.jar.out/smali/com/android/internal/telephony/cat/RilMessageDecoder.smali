.class Lcom/android/internal/telephony/cat/RilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static final DEBUG:Z

.field private static final SECURE:Z

.field private static sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->DEBUG:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 104
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 105
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 5
    .parameter "rilMsg"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 145
    iget v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v3, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    .line 179
    .local v0, decodingStarted:Z
    :goto_0
    return v0

    .line 148
    .end local v0           #decodingStarted:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 155
    .end local v0           #decodingStarted:Z
    :pswitch_1
    const/4 v2, 0x0

    .line 157
    .local v2, rawData:[B
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    const/4 v0, 0x1

    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 158
    .end local v0           #decodingStarted:Z
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    .line 162
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 168
    .end local v0           #decodingStarted:Z
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 170
    .local v1, e:Lcom/android/internal/telephony/cat/ResultException;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 172
    const/4 v0, 0x0

    .line 174
    .restart local v0       #decodingStarted:Z
    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 58
    const-class v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)V

    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 60
    sget-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    .line 62
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 4
    .parameter "rilMsg"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 94
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->dispose()V

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 188
    sput-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sInstance:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 189
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->quit()V

    .line 192
    return-void
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .parameter "resCode"
    .parameter "cmdParams"

    .prologue
    .line 84
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 86
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 2
    .parameter "rilMsg"

    .prologue
    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 75
    return-void
.end method
