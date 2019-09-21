.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    }
.end annotation


# static fields
.field private static final BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static final DEFAULT_WFC_MDN:Ljava/lang/String; = "0"

.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x1

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

.field private mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIsContentObserversRegistered:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mVoWiFiModeObserver:Landroid/database/ContentObserver;

.field private mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

.field private mVolteProvisionFlag:I

.field private mWfcModeUri:Landroid/net/Uri;

.field private mWfcRoamingModeUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 5
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 61
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 62
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 64
    const-string v1, "android.permission.READ_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 69
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    new-instance v2, Landroid/os/Handler;

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    .line 76
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$2;

    new-instance v2, Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$2;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    .line 121
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$3;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$3;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 814
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$7;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$7;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 945
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    .line 90
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 91
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 92
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsConfigImplHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 96
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    .line 97
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v2

    invoke-static {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    .line 99
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 101
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v1, "unable to listen for subscription changed due to subscriptionManager is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImsConfigImplRequestHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "reqeustHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsConfigImpl;II)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 40
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "x2"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWfcMDN(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    return-void
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->setVolteProvisioningEnabled()V

    return-void
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return v0
.end method

.method static synthetic access$1802(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return p1
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$202(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return p1
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object v0
.end method

.method static synthetic access$702(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/telephony/ims/ImsMmTelManager;

    .line 40
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p1
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 40
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 40
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object p1
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 348
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method private static getImsConfigImplBaseOperationConstant(I)I
    .locals 1
    .param p0, "imsConfigOpConst"    # I

    .line 735
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 742
    const/4 v0, -0x1

    return v0

    .line 739
    :cond_0
    return v0

    .line 737
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getImsConfigListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 332
    if-nez p1, :cond_0

    .line 333
    const-string v0, "AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 336
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 341
    :cond_2
    :goto_0
    const-string v0, "getImsConfigListener returns null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 327
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :cond_0
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0
.end method

.method private getPhoneId()I
    .locals 1

    .line 833
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method private getProvisionedValueInCache(I)Z
    .locals 3
    .param p1, "item"    # I

    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "value":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0

    .line 895
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedValueInCache: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 775
    const/4 v0, -0x1

    .line 776
    .local v0, "subId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 777
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_0

    .line 778
    nop

    .line 779
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 780
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 781
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 784
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method private getWfcMDN(I)Ljava/lang/String;
    .locals 2
    .param p1, "subid"    # I

    .line 789
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "wfc_ims_mdn"

    invoke-static {p1, v1, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "mdn":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const/4 v0, 0x0

    .line 794
    :cond_0
    return-object v0
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "retVal"    # I

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "info":Ljava/lang/String;
    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x41

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 917
    :cond_0
    const-string v0, "vice_dm"

    .line 918
    goto :goto_0

    .line 914
    :cond_1
    const-string v0, "wfc_dm"

    .line 915
    goto :goto_0

    .line 911
    :cond_2
    const-string v0, "eab_dm"

    .line 912
    goto :goto_0

    .line 908
    :cond_3
    const-string v0, "vt_dm"

    .line 909
    goto :goto_0

    .line 905
    :cond_4
    const-string v0, "vlt_dm"

    .line 906
    nop

    .line 922
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 926
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    if-eqz p3, :cond_6

    .line 931
    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 934
    :cond_6
    const/4 v2, 0x1

    .line 935
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    .line 936
    return-void

    .line 923
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :goto_1
    return-void
.end method

.method private onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "accessType"    # I

    .line 266
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 267
    .local v0, "response":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 268
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    .line 269
    monitor-enter v0

    .line 270
    :try_start_0
    const-string v1, "Notifyall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v0, "getSetCapabilityValueListener :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 281
    .local v0, "listener":Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    const/4 v1, 0x0

    .line 283
    .local v1, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/telephony/utils/SomeArgs;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 285
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    .line 289
    :cond_1
    if-eqz v0, :cond_3

    .line 290
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 291
    iget v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    iget v4, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    invoke-interface {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueSuccess(III)V

    goto :goto_0

    .line 294
    :cond_2
    iget v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    sget-object v4, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    invoke-interface {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V

    goto :goto_0

    .line 298
    :cond_3
    const-string v2, "onSetFeatureResponseDone :: listener is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v2, :cond_4

    .line 303
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 304
    .local v2, "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFeatureResponseDone broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, "intent":Landroid/content/Intent;
    iget v4, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    const-string v5, "item"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget v4, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    iget v5, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeatureInt(I)I

    move-result v4

    .line 310
    .local v4, "prev_value":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prev_value"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    iget v7, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsFeatureInt(II)V

    .line 313
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v3, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 314
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 317
    const/4 v5, 0x2

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    if-ne v5, v6, :cond_4

    .line 319
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    .line 324
    .end local v2    # "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "prev_value":I
    :cond_4
    return-void
.end method

.method private sendSetConfigRequest(II)I
    .locals 12
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 495
    const/16 v1, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 497
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 498
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 501
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v2

    .line 502
    .local v2, "prev_value":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSetConfigRequest item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prev_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    if-nez v1, :cond_4

    .line 508
    const-string v3, "setConfig broadcasting"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, "bProvisioning":Z
    const/16 v4, 0xa

    if-eq p1, v4, :cond_0

    const/16 v4, 0xb

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-eq p1, v4, :cond_0

    const/16 v4, 0x41

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1c

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    const/4 v3, 0x1

    .line 520
    :goto_0
    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v5, "prev_value"

    const-string v6, "value"

    const-string v7, "item"

    if-eqz v3, :cond_3

    .line 521
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    .line 522
    .local v10, "bPrev":Z
    :goto_1
    if-ne p2, v9, :cond_2

    move v8, v9

    .line 523
    .local v8, "bNew":Z
    :cond_2
    if-eq v10, v8, :cond_3

    .line 524
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v9, "provisionIntent":Landroid/content/Intent;
    const/high16 v11, 0x1000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    invoke-virtual {v9, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v11

    invoke-static {v9, v11}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 530
    iget-object v11, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 534
    .end local v8    # "bNew":Z
    .end local v9    # "provisionIntent":Landroid/content/Intent;
    .end local v10    # "bPrev":Z
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v8, "configChangedIntent":Landroid/content/Intent;
    invoke-virtual {v8, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v8, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 539
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v4, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 546
    .end local v3    # "bProvisioning":Z
    .end local v8    # "configChangedIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 547
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigImplBaseOperationConstant(I)I

    move-result v3

    return v3
.end method

.method private setVolteProvisioningEnabled()V
    .locals 2

    .line 800
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$6;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$6;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 809
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void
.end method

.method private syncWfcMDN()V
    .locals 2

    .line 748
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$5;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$5;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 771
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 947
    invoke-static {}, Lorg/codeaurora/ims/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    return-void

    .line 951
    :cond_0
    move v0, p1

    .line 952
    .local v0, "event_code":I
    move-object v1, p2

    .line 954
    .local v1, "event_info":Ljava/lang/String;
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$8;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$8;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V

    .line 1044
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1045
    return-void
.end method

.method public getConfigInt(I)I
    .locals 10
    .param p1, "item"    # I

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigInt :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    const-string v0, "getConfigInt"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 411
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    return v2

    .line 416
    :cond_0
    const/16 v1, 0x44

    if-ne p1, v1, :cond_1

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getTVolteHysTimer()I

    move-result v0

    return v0

    .line 418
    :cond_1
    const/16 v1, 0x47

    if-ne p1, v1, :cond_2

    .line 419
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServicesInCache()I

    move-result v0

    return v0

    .line 423
    :cond_2
    const/16 v4, 0x2d

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 425
    .local v1, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    goto :goto_0

    .line 427
    :cond_3
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    :goto_0
    nop

    .line 428
    .local v2, "retVal":I
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 429
    .local v3, "result_arg2":I
    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 431
    if-nez v3, :cond_8

    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, "bProvisioning":Z
    const/16 v5, 0xa

    if-eq p1, v5, :cond_5

    const/16 v5, 0xb

    if-eq p1, v5, :cond_5

    const/16 v5, 0x19

    if-eq p1, v5, :cond_5

    const/16 v5, 0x1c

    if-eq p1, v5, :cond_5

    goto :goto_1

    .line 438
    :cond_5
    const/4 v4, 0x1

    .line 441
    :goto_1
    if-eqz v4, :cond_8

    .line 442
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 443
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v5

    .line 444
    .local v5, "prev":I
    const/4 v6, 0x0

    if-ne v5, v0, :cond_6

    move v7, v0

    goto :goto_2

    :cond_6
    move v7, v6

    .line 445
    .local v7, "bPrev":Z
    :goto_2
    if-ne v2, v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v6

    .line 446
    .local v0, "bNew":Z
    :goto_3
    if-eq v7, v0, :cond_8

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getProvisionedValue Provision item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", changed to value="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", prev="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v6, "provisionIntent":Landroid/content/Intent;
    const/high16 v8, 0x1000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    const-string v8, "item"

    invoke-virtual {v6, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "prev_value"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v8

    invoke-static {v6, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 455
    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 460
    .end local v0    # "bNew":Z
    .end local v4    # "bProvisioning":Z
    .end local v5    # "prev":I
    .end local v6    # "provisionIntent":Landroid/content/Intent;
    .end local v7    # "bPrev":Z
    :cond_8
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 462
    return v2
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigString :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    const-string v0, "getConfigString"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 476
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    return-object v1

    .line 481
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getDomainName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 486
    :cond_1
    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 488
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 491
    return-object v1
.end method

.method public getEabProvisioned()Z
    .locals 3

    .line 865
    const-string v0, "getEabProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 867
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 869
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 872
    .local v0, "value":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEabProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    return v0
.end method

.method public getLvcProvisioned()Z
    .locals 3

    .line 850
    const-string v0, "getLvcProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 852
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 854
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 856
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 859
    .local v0, "value":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLvcProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    return v0
.end method

.method public getVolteProvisioned()Z
    .locals 3

    .line 840
    const-string v0, "getVolteProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 842
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    .line 844
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolteProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    return v0
.end method

.method public getWfcProvisioned()Z
    .locals 3

    .line 878
    const-string v0, "getWfcProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 880
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    .line 882
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    return v0
.end method

.method protected sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 19
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "event"    # I
    .param p4, "boolVal"    # Z
    .param p5, "intVal"    # I
    .param p6, "strVal"    # Ljava/lang/String;

    .line 357
    move-object/from16 v1, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const-wide/16 v12, 0xbb8

    .line 358
    .local v12, "TIMEOUT_SEND_REQUEST":J
    const/16 v14, 0x1e

    .line 359
    .local v14, "MAX_RETRY":I
    const/4 v15, 0x0

    .line 366
    .local v15, "count":I
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v9

    .line 368
    .local v9, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    const/16 v8, 0x1e

    const/4 v7, 0x1

    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 369
    iget-object v2, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static/range {p2 .. p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v4

    const/4 v0, 0x0

    iget-object v3, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 371
    move/from16 v6, p3

    invoke-virtual {v3, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 369
    move/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v17, v12

    move v12, v7

    .end local v12    # "TIMEOUT_SEND_REQUEST":J
    .local v17, "TIMEOUT_SEND_REQUEST":J
    move-object/from16 v7, p6

    move v13, v8

    move v8, v0

    move-object v12, v9

    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    move-object/from16 v9, v16

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 373
    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 374
    :goto_0
    :try_start_2
    iget-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    add-int/lit8 v2, v15, 0x1

    .end local v15    # "count":I
    .local v2, "count":I
    if-ge v15, v13, :cond_0

    .line 376
    const-wide/16 v3, 0xbb8

    :try_start_3
    invoke-virtual {v12, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    :goto_1
    goto :goto_2

    .line 381
    :catchall_0
    move-exception v0

    move v15, v2

    goto :goto_4

    .line 377
    :catch_0
    move-exception v0

    goto :goto_1

    .line 374
    :goto_2
    move v15, v2

    goto :goto_0

    :cond_0
    move v15, v2

    .line 381
    .end local v2    # "count":I
    .restart local v15    # "count":I
    :cond_1
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    const/4 v2, 0x1

    if-le v15, v2, :cond_2

    if-ge v15, v13, :cond_2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 390
    :cond_2
    if-lt v15, v13, :cond_3

    .line 391
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    :cond_3
    :goto_3
    return-object v12

    .line 381
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v12    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v14    # "MAX_RETRY":I
    .end local v15    # "count":I
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .end local p1    # "requestType":I
    .end local p2    # "item":I
    .end local p3    # "event":I
    .end local p4    # "boolVal":Z
    .end local p5    # "intVal":I
    .end local p6    # "strVal":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 382
    .restart local v12    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v14    # "MAX_RETRY":I
    .restart local v15    # "count":I
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .restart local p1    # "requestType":I
    .restart local p2    # "item":I
    .restart local p3    # "event":I
    .restart local p4    # "boolVal":Z
    .restart local p5    # "intVal":I
    .restart local p6    # "strVal":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 387
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "TIMEOUT_SEND_REQUEST":J
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v12

    move v13, v8

    move-object v12, v9

    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    goto :goto_7

    .line 382
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "TIMEOUT_SEND_REQUEST":J
    :catch_2
    move-exception v0

    move-wide/from16 v17, v12

    move v13, v8

    move-object v12, v9

    .line 383
    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 387
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x1

    if-le v15, v2, :cond_4

    if-ge v15, v13, :cond_4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 390
    :cond_4
    if-lt v15, v13, :cond_5

    .line 391
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    :cond_5
    :goto_6
    return-object v12

    .line 387
    :catchall_3
    move-exception v0

    :goto_7
    const/4 v2, 0x1

    if-le v15, v2, :cond_6

    if-ge v15, v13, :cond_6

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 390
    :cond_6
    if-lt v15, v13, :cond_7

    .line 391
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    :cond_7
    :goto_8
    return-object v12
.end method

.method public setCapabilityValue(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V
    .locals 12
    .param p1, "feature"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    .line 672
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCapabilityValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapabilityValue :: feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "srvType":I
    const/16 v1, 0xd

    .line 676
    .local v1, "network":I
    const/16 v2, 0xe

    .line 677
    .local v2, "act":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    const/16 v0, 0x19

    .line 705
    const/16 v1, 0x12

    .line 706
    const/16 v2, 0x13

    .line 707
    goto :goto_0

    .line 699
    :cond_1
    const/16 v0, 0x19

    .line 700
    const/16 v1, 0xd

    .line 701
    const/16 v2, 0xe

    .line 702
    goto :goto_0

    .line 694
    :cond_2
    const/4 v0, 0x3

    .line 695
    const/16 v1, 0x12

    .line 696
    const/16 v2, 0x13

    .line 697
    goto :goto_0

    .line 684
    :cond_3
    const/4 v0, 0x0

    .line 685
    const/16 v1, 0x12

    .line 686
    const/16 v2, 0x13

    .line 687
    goto :goto_0

    .line 689
    :cond_4
    const/4 v0, 0x3

    .line 690
    const/16 v1, 0xd

    .line 691
    const/16 v2, 0xe

    .line 692
    goto :goto_0

    .line 679
    :cond_5
    const/4 v0, 0x0

    .line 680
    const/16 v1, 0xd

    .line 681
    const/16 v2, 0xe

    .line 682
    nop

    .line 712
    :goto_0
    const/4 v5, 0x0

    .line 713
    .local v5, "enabled":I
    if-ne p2, v4, :cond_6

    .line 714
    const/4 v4, 0x2

    .end local v5    # "enabled":I
    .local v4, "enabled":I
    goto :goto_1

    .line 713
    .end local v4    # "enabled":I
    .restart local v5    # "enabled":I
    :cond_6
    move v4, v5

    .line 717
    .end local v5    # "enabled":I
    .restart local v4    # "enabled":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetServiceStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v11

    .line 719
    .local v11, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput v0, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 720
    iput v1, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 721
    iput p2, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 722
    iput-object p3, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 723
    new-instance v5, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, p2, v6}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    iput-object v5, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 724
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/4 v10, 0x0

    move v7, v0

    move v8, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 726
    return-void
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 567
    const-string v1, "Ignore VoWiFi Roaming enable/disable"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    return v0

    .line 570
    :cond_0
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    const-string v1, "Invalid API request for item"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    return v0

    .line 576
    :cond_1
    const/16 v1, 0x44

    if-ne p1, v1, :cond_2

    .line 577
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->setTVolteHysTimer(I)I

    move-result v0

    return v0

    .line 578
    :cond_2
    const/16 v1, 0x47

    if-ne p1, v1, :cond_3

    .line 579
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    .line 580
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_3
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 592
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 593
    const-string v1, "VoWiFi mode: config update is done only when URI is changed."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    return v0

    .line 596
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 10
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 612
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    return v1

    .line 617
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 618
    const-string v0, "ImsConfig.ConfigConstants.DOMAIN_NAME: value can\'t be changed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    return v1

    .line 624
    :cond_1
    const/16 v0, 0x46

    if-ne p1, v0, :cond_2

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedStringValue WIFI_MDN set db value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getSubId(I)I

    move-result v1

    .line 627
    .local v1, "subid":I
    const-string v2, "wfc_ims_mdn"

    invoke-static {v1, v2, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 633
    .end local v1    # "subid":I
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "prev_value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedStringValue item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", prev_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    const/16 v4, 0x2c

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 639
    .local v2, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 640
    .local v3, "retVal":I
    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 643
    if-nez v3, :cond_4

    .line 644
    const-string v4, "setConfig broadcasting"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, "configChangedIntent":Landroid/content/Intent;
    const-string v5, "item"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string v6, "value"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v7, "prev_value"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v8

    invoke-static {v4, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 650
    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 653
    if-ne p1, v0, :cond_3

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v0, "provisionIntent":Landroid/content/Intent;
    const/high16 v8, 0x1000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v0, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 660
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 663
    .end local v0    # "provisionIntent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 667
    .end local v4    # "configChangedIntent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 668
    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigImplBaseOperationConstant(I)I

    move-result v0

    return v0
.end method

.method public updateWFCMode(Z)I
    .locals 3
    .param p1, "isRoamingMode"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "updateWFCMode"

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$4;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$4;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 196
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    const/4 v1, 0x0

    return v1
.end method

.method public updateWfcModeConfigurationsToModem()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 168
    :cond_0
    return-void
.end method
