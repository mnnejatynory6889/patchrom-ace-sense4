.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/DataConnection$CallSetupException;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field protected static final BASE:I = 0x40000

.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x40000

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field protected static final EVENT_DISCONNECT:I = 0x40004

.field protected static final EVENT_DISCONNECT_ALL:I = 0x40006

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_RIL_CONNECTED:I = 0x40005

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final VDBG:Z = true

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;

.field protected static mCount_cdma:I

.field protected static mCount_gsm:I


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field protected mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field protected mApn:Lcom/android/internal/telephony/ApnSetting;

.field private mApnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected mRetryOverride:I

.field protected mRilVersion:I

.field protected mTag:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected setupTime:J

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 3
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 77
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 268
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    .line 270
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 271
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    .line 275
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 844
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    .line 947
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    .line 1060
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    .line 1149
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    .line 1193
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    .line 1238
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 299
    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 301
    iput-object p5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 302
    iput p3, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    .line 303
    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 304
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 316
    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->getSuggestedRetryTime(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/DataConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getSuggestedRetryTime(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    .line 592
    const/4 v1, -0x1

    .line 593
    .local v1, retry:I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 594
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataCallState;

    .line 595
    .local v0, response:Lcom/android/internal/telephony/DataCallState;
    iget v1, v0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 597
    .end local v0           #response:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    return v1
.end method

.method public static get_mCount_cdma()I
    .locals 1

    .prologue
    .line 1295
    sget v0, Lcom/android/internal/telephony/DataConnection;->mCount_cdma:I

    return v0
.end method

.method public static get_mCount_gsm()I
    .locals 1

    .prologue
    .line 1291
    sget v0, Lcom/android/internal/telephony/DataConnection;->mCount_gsm:I

    return v0
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 353
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 354
    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 359
    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 361
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v3, :cond_1

    .line 362
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 363
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 370
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConnectionCompleted at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    goto :goto_0

    .line 365
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 366
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 367
    new-instance v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/DataConnection$CallSetupException;-><init>(I)V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 9
    .parameter "dp"
    .parameter "sendAll"

    .prologue
    .line 384
    const-string v5, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, alreadySent:Lcom/android/internal/telephony/ApnContext;
    const/4 v4, 0x0

    .line 389
    .local v4, reason:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 391
    iget-object v3, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 392
    .local v3, msg:Landroid/os/Message;
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_0

    .line 393
    iget-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #alreadySent:Lcom/android/internal/telephony/ApnContext;
    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 395
    .restart local v1       #alreadySent:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    .line 397
    const-string v6, "msg=%s msg.obj=%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :goto_0
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 401
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 403
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 406
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_5

    .line 407
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 408
    .local v0, a:Lcom/android/internal/telephony/ApnContext;
    if-eq v0, v1, :cond_2

    .line 409
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 410
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v6, 0x4200f

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 412
    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 413
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 397
    .end local v0           #a:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v5, "<no-reason>"

    goto :goto_0

    .line 417
    .end local v3           #msg:Landroid/os/Message;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 5
    .parameter "ar"

    .prologue
    .line 553
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .line 554
    .local v1, response:Lcom/android/internal/telephony/DataCallState;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 557
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 563
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 566
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 567
    .local v2, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 588
    :goto_0
    return-object v2

    .line 568
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 569
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 571
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 572
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .line 574
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v3, v4, :cond_4

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 578
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 579
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    if-eqz v3, :cond_5

    .line 580
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 581
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .line 583
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted received DataCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 584
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 585
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 6
    .parameter "response"
    .parameter "lp"

    .prologue
    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, okToUseSystemPropertyDns:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, propertyPrefix:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 606
    .local v0, dnsServers:[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 607
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v1

    .line 611
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v3

    return-object v3
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x0

    const v6, 0x40003

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, discReason:I
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 328
    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 329
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v3, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 330
    .local v3, m:Landroid/os/Message;
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string v5, "radioTurnedOff"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    const/4 v1, 0x1

    .line 336
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    const-string v4, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 344
    :goto_1
    return-void

    .line 332
    .restart local v2       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .restart local v3       #m:Landroid/os/Message;
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string v5, "pdpReset"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    const/4 v1, 0x2

    goto :goto_0

    .line 340
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_2
    const-string v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 342
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    .line 625
    new-instance v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .line 627
    .local v0, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    .line 655
    :goto_0
    return-object v0

    .line 630
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 633
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 634
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v1, v2, :cond_1

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 641
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 642
    const-string v1, "updateLinkProperty old != new"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 653
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V
    .locals 2
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    .line 1254
    const/high16 v0, 0x4

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1255
    return-void
.end method

.method protected clearSettings()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 530
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 532
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 533
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 534
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 535
    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 537
    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 539
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->setupTime:J

    .line 542
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    .line 544
    return-void
.end method

.method public configureRetry(III)Z
    .locals 1
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    move-result v0

    return v0
.end method

.method public configureRetry(Ljava/lang/String;)Z
    .locals 1
    .parameter "configStr"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConnectionTime()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method protected getRadioTechnology(I)I
    .locals 3
    .parameter "defaultRadioTechnology"

    .prologue
    .line 422
    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 423
    move v0, p1

    .line 427
    .local v0, radioTechnology:I
    :goto_0
    return v0

    .line 425
    .end local v0           #radioTechnology:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .restart local v0       #radioTechnology:I
    goto :goto_0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public getRetryTimer()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v0

    return v0
.end method

.method public increaseRetryCount()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 476
    return-void
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v0

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v0

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method public resetRefCount()V
    .locals 1

    .prologue
    .line 1288
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1289
    return-void
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 490
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 497
    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 1264
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1265
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 1275
    const v0, 0x40006

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1277
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
