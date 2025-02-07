.class Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "notifyDcParam"
.end annotation


# instance fields
.field private latest_any_DCState:I

.field private latest_apn:Ljava/lang/String;

.field private latest_each_DCState:I

.field private latest_errorCause:I

.field private latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field private latest_ipv_DCState:I

.field private latest_linkCapabilities:Landroid/net/LinkCapabilities;

.field private latest_linkProperties:Landroid/net/LinkProperties;

.field private latest_possible:Z

.field private latest_reason:Ljava/lang/String;

.field private latest_roaming:Z

.field private latest_state:Lcom/android/internal/telephony/Phone$DataState;

.field private latest_tech:I

.field final synthetic this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 965
    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/Phone$DataState;

    .line 967
    iput-boolean v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    .line 968
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    .line 969
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    .line 970
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    .line 971
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkCapabilities:Landroid/net/LinkCapabilities;

    .line 972
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    .line 973
    iput-boolean v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    .line 974
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    .line 976
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_any_DCState:I

    .line 977
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_each_DCState:I

    .line 978
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv_DCState:I

    .line 979
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 980
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;Lcom/android/internal/telephony/DefaultPhoneNotifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V

    return-void
.end method

.method private HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    .locals 2
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"
    .parameter "possible"
    .parameter "tech"
    .parameter "roaming"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "errorCause"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, p4, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    if-ne v0, p5, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    if-ne v0, p6, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    if-ne v0, p7, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    if-ne v0, p10, :cond_4

    invoke-direct {p0, p8}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->compareLinkProperty(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    const/4 v0, 0x1

    .line 1048
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private HtcDupNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)Z
    .locals 1
    .parameter "possible"
    .parameter "tech"
    .parameter "ipv"
    .parameter "converDataResultAll"
    .parameter "converApnTypeState"
    .parameter "converRealIpApnTypeState"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone$IPVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_any_DCState:I

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_each_DCState:I

    if-ne v0, p5, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv_DCState:I

    if-ne v0, p6, :cond_2

    .line 1062
    const/4 v0, 0x1

    .line 1064
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 949
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 949
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 949
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 949
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private compareLinkProperty(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "linkProperties"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1006
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v0

    .line 1009
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalHttpProxyV6(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalInterfaceNameV6(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty rat = true"

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    move v0, v1

    .line 1023
    goto :goto_0

    .line 1024
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty linkProperties = null ,rat = true"

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    move v0, v1

    .line 1026
    goto :goto_0

    .line 1028
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty rat = false"

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configNotifyDcParam(Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "possible"
    .parameter "roaming"
    .parameter "tech"
    .parameter "errorCause"
    .parameter "apn"
    .parameter "reason"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/Phone$DataState;

    .line 984
    iput-boolean p4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    .line 985
    iput-object p9, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    .line 986
    iput-object p8, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    .line 987
    iput-object p2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    .line 988
    iput-object p3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkCapabilities:Landroid/net/LinkCapabilities;

    .line 989
    iput p6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    .line 990
    iput-boolean p5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    .line 991
    iput p7, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    .line 992
    return-void
.end method

.method private configNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)V
    .locals 1
    .parameter "possible"
    .parameter "tech"
    .parameter "ipv"
    .parameter "converDataResultAll"
    .parameter "converApnTypeState"
    .parameter "converRealIpApnTypeState"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    #setter for: Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z
    invoke-static {v0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$502(Lcom/android/internal/telephony/DefaultPhoneNotifier;Z)Z

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    #setter for: Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I
    invoke-static {v0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$602(Lcom/android/internal/telephony/DefaultPhoneNotifier;I)I

    .line 999
    iput-object p3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 1000
    iput p4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_any_DCState:I

    .line 1001
    iput p5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_each_DCState:I

    .line 1002
    iput p6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv_DCState:I

    .line 1003
    return-void
.end method
