.class Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;
.super Ljava/lang/Object;
.source "BipProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendBipCmdRunnable"
.end annotation


# instance fields
.field private mChannelId:I

.field private mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 1
    .parameter
    .parameter "cmdType"
    .parameter "channelId"
    .parameter "cmdMsg"

    .prologue
    const/4 v0, 0x0

    .line 2081
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2077
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2078
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 2079
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mChannelId:I

    .line 2082
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 2083
    iput-object p4, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2084
    iput p3, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mChannelId:I

    .line 2085
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2089
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BIP - sendBipCmdRunnable: process BIP operation...start"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$1100(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mChannelId:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 2093
    .local v0, curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2112
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BIP - sendBipCmdRunnable: process BIP operation...end"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2113
    :cond_2
    return-void

    .line 2095
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2096
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mChannelId:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->access$1000(Lcom/android/internal/telephony/cat/BipProxy;I)V

    goto :goto_0

    .line 2100
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 2104
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 2107
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;->mCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 2093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
