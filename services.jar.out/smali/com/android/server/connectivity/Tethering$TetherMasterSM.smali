.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    }
.end annotation


# static fields
.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPDATE_DNS_REQUIRED:I = 0x7

.field static final CMD_UPSTREAM_APN_CHANGE:I = 0x8

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field static final CMD_UPSTREAM_CONFIG_CHANGE:I = 0x6

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private DOWN_STREAM_ON__WHEN_NO_UP_STREAM:Z

.field private mCurrentConnectionSequence:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIpforwardingEnabled:Z

.field private mMobileApnReserved:I

.field private mNotifyList:Ljava/util/ArrayList;

.field private mPrviousDunRequestResponse:Ljava/lang/Integer;

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private mTetherModeActivatingState:Lcom/android/internal/util/State;

.field private mTetherModeAliveState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field private mUpstreamIfaceNameV6:Ljava/lang/String;

.field private mUpstreamNetworkType:I

.field private mWiMaxConnectionRequested:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2672
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 2673
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2648
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    .line 2650
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    .line 2652
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;

    .line 2660
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z

    .line 2662
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIpforwardingEnabled:Z

    .line 2664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->DOWN_STREAM_ON__WHEN_NO_UP_STREAM:Z

    .line 2676
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    .line 2677
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2679
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeActivatingState:Lcom/android/internal/util/State;

    .line 2680
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeActivatingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2682
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 2683
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2685
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 2686
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2687
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 2688
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2689
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 2690
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2691
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 2692
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2693
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 2694
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 2697
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 2698
    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$5904(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$5908(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 2609
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->DOWN_STREAM_ON__WHEN_NO_UP_STREAM:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeActivatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->changeIpForwardSetting(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private changeIpForwardSetting(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 3982
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIpforwardingEnabled:Z

    if-eq p1, v3, :cond_0

    .line 3983
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3984
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 3988
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3993
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIpforwardingEnabled:Z

    .line 3995
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/os/INetworkManagementService;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 3989
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v1

    .line 3990
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ipfw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const/4 v3, 0x0

    goto :goto_0
.end method
