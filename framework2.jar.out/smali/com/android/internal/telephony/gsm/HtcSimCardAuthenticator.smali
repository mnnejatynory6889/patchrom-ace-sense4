.class public Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;
.super Landroid/os/Handler;
.source "HtcSimCardAuthenticator.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;,
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    }
.end annotation


# static fields
.field private static final AKA_COMMAND_LENGTH:I = 0x27

.field private static final EVENT_REQUEST_AKA_AUTHENTICATION_DONE:I = 0x6

.field private static final EVENT_REQUEST_AKA_AUTHENTICATION_USIM_AUTH_DONE:I = 0x8

.field private static final EVENT_REQUEST_GSM_AUTHENTICATION_DONE:I = 0x5

.field private static final EVENT_REQUEST_GSM_AUTHENTICATION_USIM_AUTH_DONE:I = 0x7

.field private static final GSM_COMMAND_2G_LENGTH:I = 0x15

.field private static final GSM_COMMAND_3G_LENGTH:I = 0x16

.field private static final GSM_KC_LENGTH:I = 0x8

.field static final GSM_RAND_LENGTH:I = 0x10

.field private static final GSM_SRES_LENGTH:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSimCardAuthenticator"

.field private static final RIL_AUTH_TYPE_AKA_AUTHENTICATE:I = 0x1

.field private static final RIL_AUTH_TYPE_GSM_AUTHENTICATE:I

.field private static final SDEBUG:Z

.field private static final USE_GENERIC_IO_FOR_QCT_AT_BASED:Z


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->USE_GENERIC_IO_FOR_QCT_AT_BASED:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    .line 647
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->USE_GENERIC_IO_FOR_QCT_AT_BASED:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;[BLandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->requestGsmAuthenticationOverUiccAuth([BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->requestAkaAuthenticationOverUiccAuth([B[BLandroid/os/Message;)V

    return-void
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 370
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_0

    .line 371
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 372
    .local v0, hex:[B
    const/4 v2, 0x0

    .line 373
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 374
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0           #hex:[B
    .end local v1           #i:I
    .end local v2           #result:I
    :cond_0
    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 8
    .parameter "hexString"

    .prologue
    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    .line 385
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 386
    .local v0, hex:[B
    const-wide/16 v2, 0x0

    .line 387
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 388
    aget-byte v4, v0, v1

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    array-length v6, v0

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0           #hex:[B
    .end local v1           #i:I
    .end local v2           #result:J
    :cond_0
    const-wide/16 v2, -0x1

    :cond_1
    return-wide v2
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "htc.sim_authentication"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
    const-string v0, "HtcSimCardAuthenticator"

    const-string v1, "published"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private requestAkaAuthenticationOverUiccAuth([B[BLandroid/os/Message;)V
    .locals 7
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 155
    const-string v2, "gsm.sim.types"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, simType:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string v2, "HtcSimCardAuthenticator"

    const-string v3, "Not a USIM for AKA authentication!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v6, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 166
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 168
    const/16 v2, 0x8

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v3, v5, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 171
    .local v0, response:Landroid/os/Message;
    const-string v2, "HtcSimCardAuthenticator"

    const-string v3, "> REQUEST_AKA_AUTHENTICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto :goto_0

    .line 174
    .end local v0           #response:Landroid/os/Message;
    :cond_1
    const-string v2, "HtcSimCardAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid autn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v6, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v2, "HtcSimCardAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v6, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0
.end method

.method private requestGsmAuthenticationOverUiccAuth([BLandroid/os/Message;)V
    .locals 6
    .parameter "rand"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 129
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    .local v0, is3gSim:Z
    const/4 v2, 0x7

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v3, v0, p2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, response:Landroid/os/Message;
    const-string v2, "HtcSimCardAuthenticator"

    const-string v3, "> REQUEST_GSM_AUTHENTICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    .line 141
    .end local v0           #is3gSim:Z
    .end local v1           #response:Landroid/os/Message;
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v2, "HtcSimCardAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v5, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V
    .locals 1
    .parameter "response"
    .parameter "result"
    .parameter "error"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 361
    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 366
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 404
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "< REQUEST_GSM_AUTHENTICATION_USIM_AUTH_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 408
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 410
    .local v4, ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 411
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 413
    .local v21, responseBundle:Landroid/os/Bundle;
    if-eqz v21, :cond_2

    .line 414
    const-string v26, "sw1sw2"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    .line 415
    .local v25, sw1sw2:[B
    const-string v26, "res"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v23

    .line 416
    .local v23, sres:[B
    const-string v26, "kc"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 417
    .local v15, kc:[B
    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v24

    .line 425
    .local v24, statusWord:Ljava/lang/String;
    if-eqz v15, :cond_1

    if-eqz v23, :cond_1

    array-length v0, v15

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 428
    new-instance v22, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v15, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(IJ)V

    .line 432
    .local v22, result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 434
    .end local v22           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_1
    const-string v26, "HtcSimCardAuthenticator"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid kc = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-static {v15, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", sres"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 439
    .end local v15           #kc:[B
    .end local v23           #sres:[B
    .end local v24           #statusWord:Ljava/lang/String;
    .end local v25           #sw1sw2:[B
    :cond_2
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Invalid Bundle!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 444
    .end local v21           #responseBundle:Landroid/os/Bundle;
    :cond_3
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Failed to request GSM Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 451
    .end local v4           #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "< REQUEST_AKA_AUTHENTICATION_USIM_AUTH_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 453
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 454
    .restart local v4       #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 455
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 456
    .restart local v21       #responseBundle:Landroid/os/Bundle;
    if-eqz v21, :cond_0

    .line 457
    const-string v26, "sw1sw2"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    .line 458
    .restart local v25       #sw1sw2:[B
    const-string v26, "res"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 459
    .local v17, res:[B
    const-string v26, "Ck"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 460
    .local v9, ck:[B
    const-string v26, "Ik"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 462
    .local v12, ik:[B
    const-string v26, "kc"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 463
    .restart local v15       #kc:[B
    const-string v26, "auts"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 464
    .local v6, auts:[B
    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v24

    .line 473
    .restart local v24       #statusWord:Ljava/lang/String;
    if-eqz v17, :cond_4

    if-eqz v9, :cond_4

    if-eqz v12, :cond_4

    .line 476
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v12, v1}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B[B[B)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 477
    :cond_4
    if-eqz v6, :cond_5

    .line 478
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B)V

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 482
    :cond_5
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string v26, "98"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 484
    const-string v26, "64"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 485
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "No such authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 489
    :cond_6
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Authentication rejected!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 493
    :cond_7
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Failed to request AKA Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 499
    .end local v6           #auts:[B
    .end local v9           #ck:[B
    .end local v12           #ik:[B
    .end local v15           #kc:[B
    .end local v17           #res:[B
    .end local v21           #responseBundle:Landroid/os/Bundle;
    .end local v24           #statusWord:Ljava/lang/String;
    .end local v25           #sw1sw2:[B
    :cond_8
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Failed to request AKA Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 505
    .end local v4           #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "< REQUEST_GSM_AUTHENTICATION_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 507
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 508
    .restart local v4       #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_c

    .line 509
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Ljava/lang/String;

    move-object/from16 v20, v26

    check-cast v20, [Ljava/lang/String;

    .line 511
    .local v20, response:[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 513
    .local v16, length:I
    iget-boolean v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->is3gSim:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 516
    const/16 v26, 0x20

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 517
    new-instance v22, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x2

    const/16 v28, 0xa

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v20, v27

    const/16 v28, 0xc

    const/16 v29, 0x1c

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(IJ)V

    .line 519
    .restart local v22       #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 522
    .end local v22           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_9
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Authentication Rejected!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 529
    :cond_a
    const/16 v26, 0x1c

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 530
    new-instance v22, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x0

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v20, v27

    const/16 v28, 0x8

    const/16 v29, 0x18

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(IJ)V

    .line 532
    .restart local v22       #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 535
    .end local v22           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_b
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Authentication Rejected!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 540
    .end local v16           #length:I
    .end local v20           #response:[Ljava/lang/String;
    :cond_c
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Failed to request GSM Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 546
    .end local v4           #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "< REQUEST_AKA_AUTHENTICATION_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 548
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 549
    .restart local v4       #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_13

    .line 550
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Ljava/lang/String;

    move-object/from16 v20, v26

    check-cast v20, [Ljava/lang/String;

    .line 562
    .restart local v20       #response:[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v20, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v16

    .line 564
    .restart local v16       #length:I
    const/16 v26, 0x4

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 565
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Incorrect length of response!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 570
    :cond_d
    const/16 v26, 0x1

    aget-object v26, v20, v26

    add-int/lit8 v27, v16, -0x4

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 572
    .restart local v24       #statusWord:Ljava/lang/String;
    const-string v26, "9000"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 573
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const-string v27, "DB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 578
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Sucessful Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v19, 0x2

    .line 581
    .local v19, resLengthStartPosition:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 583
    .local v18, resLength:I
    mul-int/lit8 v26, v18, 0x2

    add-int/lit8 v11, v26, 0x4

    .line 584
    .local v11, ckLengthStartPosition:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    add-int/lit8 v27, v11, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 586
    .local v10, ckLength:I
    mul-int/lit8 v26, v10, 0x2

    add-int v26, v26, v11

    add-int/lit8 v14, v26, 0x2

    .line 587
    .local v14, ikLengthStartPosition:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    add-int/lit8 v27, v14, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 590
    .local v13, ikLength:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x4

    mul-int/lit8 v28, v18, 0x2

    add-int/lit8 v28, v28, 0x4

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 592
    .restart local v17       #res:[B
    const/16 v26, 0x1

    aget-object v26, v20, v26

    add-int/lit8 v27, v11, 0x2

    add-int/lit8 v28, v11, 0x2

    mul-int/lit8 v29, v10, 0x2

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 594
    .restart local v9       #ck:[B
    const/16 v26, 0x1

    aget-object v26, v20, v26

    add-int/lit8 v27, v14, 0x2

    add-int/lit8 v28, v14, 0x2

    mul-int/lit8 v29, v13, 0x2

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 598
    .restart local v12       #ik:[B
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v12, v1}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B[B[B)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 600
    .end local v9           #ck:[B
    .end local v10           #ckLength:I
    .end local v11           #ckLengthStartPosition:I
    .end local v12           #ik:[B
    .end local v13           #ikLength:I
    .end local v14           #ikLengthStartPosition:I
    .end local v17           #res:[B
    .end local v18           #resLength:I
    .end local v19           #resLengthStartPosition:I
    :cond_e
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const-string v27, "DC"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 605
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Synchronization Failure!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v8, 0x2

    .line 608
    .local v8, autsLengthStartPosition:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 611
    .local v7, autsLength:I
    const/16 v26, 0x1

    aget-object v26, v20, v26

    const/16 v27, 0x4

    mul-int/lit8 v28, v7, 0x2

    add-int/lit8 v28, v28, 0x4

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 614
    .restart local v6       #auts:[B
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B)V

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 617
    .end local v6           #auts:[B
    .end local v7           #autsLength:I
    .end local v8           #autsLengthStartPosition:I
    :cond_f
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Unknown response!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 622
    :cond_10
    const-string v26, "98"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 623
    const-string v26, "64"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 624
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "No such authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 628
    :cond_11
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Authentication rejected!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 633
    :cond_12
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Unknown Status Words!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 639
    .end local v16           #length:I
    .end local v20           #response:[Ljava/lang/String;
    .end local v24           #statusWord:Ljava/lang/String;
    :cond_13
    const-string v26, "HtcSimCardAuthenticator"

    const-string v27, "Failed to request AKA Authentication!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->publish()V

    .line 99
    return-void
.end method

.method public requestAkaAuthentication([B[BLandroid/os/Message;)V
    .locals 10
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 285
    const-string v5, "gsm.sim.types"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, simType:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "Not a USIM for AKA authentication!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    .line 354
    :goto_0
    return-void

    .line 294
    :cond_0
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 296
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 300
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x27

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 303
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    const/16 v5, 0x88

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    array-length v5, p1

    add-int/lit8 v1, v5, 0x1

    .line 313
    .local v1, length:I
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 314
    array-length v5, p2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .line 316
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    array-length v5, p1

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    array-length v5, p2

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    const/4 v5, 0x6

    new-instance v6, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v6, v9, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 342
    .local v3, response:Landroid/os/Message;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "> REQUEST_AKA_AUTHENTICATION"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 323
    .end local v3           #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 334
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write AUTN buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #length:I
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid autn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 351
    :cond_3
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid rand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0
.end method

.method public requestGsmAuthentication([BLandroid/os/Message;)V
    .locals 12
    .parameter "rand"
    .parameter "onComplete"

    .prologue
    const/16 v11, 0x88

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 193
    if-eqz p1, :cond_2

    array-length v5, p1

    if-ne v5, v9, :cond_2

    .line 195
    const-string v5, "gsm.sim.types"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, simType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .local v1, is3gSim:Z
    const/4 v2, 0x0

    .line 202
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 206
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x16

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 209
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 215
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    const/4 v5, 0x5

    new-instance v6, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v6, v1, p2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 262
    .local v3, response:Landroid/os/Message;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "> REQUEST_GSM_AUTHENTICATION"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 270
    .end local v1           #is3gSim:Z
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #response:Landroid/os/Message;
    .end local v4           #simType:Ljava/lang/String;
    :goto_1
    return-void

    .line 224
    .restart local v1       #is3gSim:Z
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #simType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 230
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x15

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 235
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xa0

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 237
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 241
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 254
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SimType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 266
    .end local v1           #is3gSim:Z
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #simType:Ljava/lang/String;
    :cond_2
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid rand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_1
.end method
