.class public Lcom/htc/album/SocialNetwork/ActivitySearchView;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivitySearchView.java"


# static fields
.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final RESUME_ADAPTER:I = 0xa411

.field public static mFriendKeepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mButtonLogin:Lcom/htc/widget/HtcRimButton;

.field private mCurMode:I

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutListView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/widget/RelativeLayout;

.field private mTextViewLogin:Landroid/widget/TextView;

.field private mbClearTop5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    const-string v0, "ActivitySearchView"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    iput v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method public static addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    :cond_1
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    const-string v3, "Kabaeva"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: addFriendToKeepList - Remove : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    const-string v2, "Kabaeva"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: Add : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static deinitTop5FriendList()V
    .locals 1

    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public static getTop5FriendList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initTop5FriendList()V
    .locals 1

    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivitySearchView][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne v5, p1, :cond_4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setButtonOnClickListener()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "opensense_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "login_btn_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v5}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    goto :goto_1
.end method

.method protected createAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    :cond_0
    return-void
.end method

.method protected createListView()V
    .locals 3

    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewSearch;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    return-void
.end method

.method public initPageComponents()V
    .locals 3

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x2090004

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setContentView(I)V

    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->initPageComponents()V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020004

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x20401ee

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020005

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setContentView(I)V

    goto :goto_0
.end method

.method public initTop5List()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const v2, 0x9c41

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onButtonClickLogin()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ActivitySearchView][onCreate]: Begin"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivitySearchView][onCreate]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ActivitySearchView][onCreate]: failed: getOpenSenseTabPlugin..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ActivitySearchView][onCreate]: failed: onCreateFriendListPlugin..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentMainFriends][onCreate]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "upload_mode"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5List()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ActivitySearchView][onCreate]: End"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivitySearchView][onCreate]: OS Plugin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, v5, v6}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ActivitySearchView][onCreate]: failed: unable to create plugin..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v6, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMenuContactPicker()V
    .locals 0

    return-void
.end method

.method public onMenuRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x274f -> :sswitch_2
        0x2750 -> :sswitch_0
        0x4e84 -> :sswitch_1
        0xa411 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->onMenuContactPicker()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    return-void
.end method

.method public setActivityTitle()V
    .locals 0

    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v1, "service_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivitySearchView][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
