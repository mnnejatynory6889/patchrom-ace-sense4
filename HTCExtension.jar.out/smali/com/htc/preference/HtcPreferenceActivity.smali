.class public abstract Lcom/htc/preference/HtcPreferenceActivity;
.super Landroid/app/ListActivity;
.source "HtcPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceActivity$Header;,
        Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "HtcPreferenceActivity"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "HtcPreferenceActivity"


# instance fields
.field private mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceActivity$1;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/preference/HtcPreferenceActivity;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 1659
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1661
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1666
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1653
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1683
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1685
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_1
    return-void
.end method

.method private startQuickSearchBox()Z
    .locals 3

    .prologue
    .line 1838
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "qsb.corpus://com.android.settings%2F.globalsearch.SettingQueryHandler"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1843
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    const/4 v2, 0x1

    .line 1848
    :goto_0
    return v2

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1848
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1436
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getClassLoader(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageCodePath(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageResourcePath(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fragmentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {p1, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1447
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1448
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1449
    const v2, 0x10202d4

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1450
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1451
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1745
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 1746
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1759
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1761
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 1763
    return-void
.end method

.method findBestMatchingHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 9
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1512
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1513
    .local v3, oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1515
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1516
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1534
    .local v0, NM:I
    if-ne v0, v8, :cond_7

    .line 1535
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object v3, v4

    .line 1551
    :cond_2
    :goto_1
    return-object v3

    .line 1519
    .end local v0           #NM:I
    .restart local v3       #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1520
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1521
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1523
    :cond_5
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1524
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1525
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1527
    :cond_6
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1528
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1529
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1536
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1537
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1539
    .restart local v3       #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1543
    :cond_8
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1546
    :cond_9
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1537
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1551
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1790
    const/4 v0, 0x0

    .line 1793
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {p0, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1626
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onBackPressed()V

    .line 1630
    if-eqz p1, :cond_0

    .line 1631
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 1726
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1012
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1015
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 16
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 1027
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 1028
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1032
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 1036
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, nodeName:Ljava/lang/String;
    const-string v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1038
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1138
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v3

    .line 1139
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v13

    .line 1043
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v2, 0x0

    .line 1045
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 1047
    .local v8, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_16

    .line 1048
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 1052
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1053
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1054
    new-instance v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 1056
    .local v4, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1058
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 1061
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1063
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 1064
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_d

    .line 1065
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1070
    :cond_6
    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1072
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 1073
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_e

    .line 1074
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    .line 1079
    :cond_7
    :goto_2
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1081
    if-eqz v11, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 1082
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_f

    .line 1083
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1088
    :cond_8
    :goto_3
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1090
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 1091
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_10

    .line 1092
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1097
    :cond_9
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1099
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1101
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1103
    if-nez v2, :cond_a

    .line 1104
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1107
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1109
    .local v5, innerDepth:I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_13

    .line 1110
    :cond_c
    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_b

    .line 1114
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1117
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 1140
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catch_1
    move-exception v3

    .line 1141
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1067
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_d
    :try_start_4
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1076
    :cond_e
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1085
    :cond_f
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1094
    :cond_10
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1119
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    :cond_11
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 1123
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1127
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 1128
    iput-object v2, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1129
    const/4 v2, 0x0

    .line 1132
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1134
    .end local v4           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1143
    :cond_16
    if-eqz v9, :cond_17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1146
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1225
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1227
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1230
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1297
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1299
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1234
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1236
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->postBindPreferences()V

    .line 1239
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 40
    .parameter "savedInstanceState"

    .prologue
    .line 625
    const-wide/16 v33, 0x0

    .line 626
    .local v33, startTime:J
    const-wide/16 v13, 0x0

    .line 627
    .local v13, endTime:J
    sget-boolean v36, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v36, :cond_0

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    .line 630
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "System Time Before SuperActivity: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 633
    sget-boolean v36, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v36, :cond_1

    .line 635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 636
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "System Time After SuperActivity: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "elapsedTime: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v33, v13

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " (ms)"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    const v36, 0x10900c3

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setContentView(I)V

    .line 643
    const v36, 0x10202d2

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/FrameLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 644
    const v36, 0x10202d3

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v20

    .line 646
    .local v20, hidingHeaders:Z
    if-nez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v36

    if-nez v36, :cond_12

    :cond_2
    const/16 v36, 0x1

    :goto_0
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v36

    const-string v37, ":android:show_fragment"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 648
    .local v22, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v36

    const-string v37, ":android:show_fragment_args"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 649
    .local v21, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v36

    const-string v37, ":android:show_fragment_title"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 650
    .local v25, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v36

    const-string v37, ":android:show_fragment_short_title"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 653
    .local v23, initialShortTitle:I
    move-object/from16 v10, p0

    .line 655
    .local v10, context:Landroid/content/Context;
    sget-boolean v36, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v36, :cond_3

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 658
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "System Time before Modify by Setting: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_3
    if-eqz v21, :cond_4

    .line 661
    const-string v36, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 663
    .local v30, packageName:Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-static {v10, v0}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v10

    .line 666
    .end local v30           #packageName:Ljava/lang/String;
    :cond_4
    sget-boolean v36, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v36, :cond_5

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 669
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "System Time After Modify by setting: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_5
    if-eqz p1, :cond_13

    .line 676
    const-string v36, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 677
    .local v19, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    if-eqz v19, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 679
    const-string v36, ":android:cur_header"

    const/16 v37, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 681
    .local v11, curHeader:I
    if-ltz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v11, v0, :cond_6

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 721
    .end local v11           #curHeader:I
    .end local v19           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    :cond_6
    :goto_1
    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v36, v0

    if-eqz v36, :cond_18

    .line 724
    const v36, 0x10202d1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setVisibility(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 726
    if-eqz v25, :cond_7

    .line 727
    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .line 728
    .local v26, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v23, :cond_17

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 730
    .local v24, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 768
    .end local v24           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v26           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v36

    const v37, 0x2080001

    invoke-virtual/range {v36 .. v37}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x205000c

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    .line 771
    .local v28, margin:I
    const v36, 0x10202d1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 772
    .local v18, headers:Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 773
    .local v17, headerParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 774
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    const v36, 0x2080001

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 776
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 778
    div-int/lit8 v36, v28, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v28

    move/from16 v3, v36

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 782
    :cond_8
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v36, v0

    if-nez v36, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-lez v36, :cond_1b

    .line 784
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v36, v0

    if-eqz v36, :cond_b

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 786
    .local v12, div:Landroid/widget/ImageView;
    const v36, 0x2080035

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 788
    .end local v12           #div:Landroid/widget/ImageView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 789
    .local v9, contentParams:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const v37, 0x2080001

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 791
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    div-int/lit8 v37, v28, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v28

    move/from16 v3, v28

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 810
    .end local v9           #contentParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    const/16 v37, 0x5

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x208017b

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 818
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v36

    if-eqz v36, :cond_d

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setRoundedCornerEnabled(Z)V

    .line 825
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 826
    .local v27, intent:Landroid/content/Intent;
    const-string v36, "extra_prefs_show_button_bar"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 828
    const v36, 0x10202d5

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 829
    .local v8, button_bar:Landroid/widget/RelativeLayout;
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 831
    new-instance v15, Lcom/htc/widget/HtcFooter;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 832
    .local v15, footer:Lcom/htc/widget/HtcFooter;
    new-instance v6, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 833
    .local v6, backButton:Lcom/htc/widget/HtcFooterButton;
    const v36, 0x10202d6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setId(I)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x1040464

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 835
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 837
    new-instance v32, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 838
    .local v32, skipButton:Lcom/htc/widget/HtcFooterButton;
    const v36, 0x10202d7

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setId(I)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x1040466

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 840
    const/16 v36, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 842
    new-instance v29, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 843
    .local v29, nextButton:Lcom/htc/widget/HtcFooterButton;
    const v36, 0x10202d8

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setId(I)V

    .line 844
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x1040465

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {v15, v6}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 848
    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 849
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 850
    const-string v36, "HtcPreference"

    const-string v37, "HtcFooter"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 852
    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 853
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 856
    const v36, 0x10202d6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #backButton:Lcom/htc/widget/HtcFooterButton;
    check-cast v6, Lcom/htc/widget/HtcFooterButton;

    .line 857
    .restart local v6       #backButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v36, Lcom/htc/preference/HtcPreferenceActivity$2;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$2;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    const v36, 0x10202d7

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32           #skipButton:Lcom/htc/widget/HtcFooterButton;
    check-cast v32, Lcom/htc/widget/HtcFooterButton;

    .line 864
    .restart local v32       #skipButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v36, Lcom/htc/preference/HtcPreferenceActivity$3;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$3;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    const v36, 0x10202d8

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Button;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    new-instance v37, Lcom/htc/preference/HtcPreferenceActivity$4;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$4;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    const-string v36, "extra_prefs_set_next_text"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 881
    const-string v36, "extra_prefs_set_next_text"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, buttonText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setVisibility(I)V

    .line 889
    .end local v7           #buttonText:Ljava/lang/String;
    :cond_e
    :goto_5
    const-string v36, "extra_prefs_set_back_text"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 890
    const-string v36, "extra_prefs_set_back_text"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 891
    .restart local v7       #buttonText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 892
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 898
    .end local v7           #buttonText:Ljava/lang/String;
    :cond_f
    :goto_6
    const-string v36, "extra_prefs_show_skip"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 899
    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 902
    .end local v6           #backButton:Lcom/htc/widget/HtcFooterButton;
    .end local v8           #button_bar:Landroid/widget/RelativeLayout;
    .end local v15           #footer:Lcom/htc/widget/HtcFooter;
    .end local v29           #nextButton:Lcom/htc/widget/HtcFooterButton;
    .end local v32           #skipButton:Lcom/htc/widget/HtcFooterButton;
    :cond_10
    sget-boolean v36, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v36, :cond_11

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 905
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "System Time onCreate End: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v36, "HtcPreferenceActivity"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "onCreate total: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v13, v33

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " (ms)"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_11
    return-void

    .line 646
    .end local v10           #context:Landroid/content/Context;
    .end local v17           #headerParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18           #headers:Landroid/widget/LinearLayout;
    .end local v21           #initialArguments:Landroid/os/Bundle;
    .end local v22           #initialFragment:Ljava/lang/String;
    .end local v23           #initialShortTitle:I
    .end local v25           #initialTitle:I
    .end local v27           #intent:Landroid/content/Intent;
    .end local v28           #margin:I
    :cond_12
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 687
    .restart local v10       #context:Landroid/content/Context;
    .restart local v21       #initialArguments:Landroid/os/Bundle;
    .restart local v22       #initialFragment:Ljava/lang/String;
    .restart local v23       #initialShortTitle:I
    .restart local v25       #initialTitle:I
    :cond_13
    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v36, v0

    if-eqz v36, :cond_15

    .line 691
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 692
    if-eqz v25, :cond_6

    .line 693
    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    .line 694
    .restart local v26       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v23, :cond_14

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 696
    .restart local v24       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 694
    .end local v24           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_14
    const/16 v24, 0x0

    goto :goto_7

    .line 701
    .end local v26           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-lez v36, :cond_6

    .line 707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v36, v0

    if-nez v36, :cond_6

    .line 708
    if-nez v22, :cond_16

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v16

    .line 710
    .local v16, h:Lcom/htc/preference/HtcPreferenceActivity$Header;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 712
    .end local v16           #h:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 728
    .restart local v26       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_17
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 732
    .end local v26           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-lez v36, :cond_1a

    .line 733
    new-instance v36, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 734
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v36, v0

    if-nez v36, :cond_7

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v36, v0

    if-eqz v36, :cond_19

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 740
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 742
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const v37, 0x10202d4

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceFrameLayout;

    .line 745
    .local v31, prefs:Landroid/preference/PreferenceFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v35

    .line 746
    .local v35, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 747
    new-instance v5, Lcom/htc/preference/HtcPreferenceFrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;-><init>(Landroid/content/Context;)V

    .line 748
    .local v5, HtcPrefs:Lcom/htc/preference/HtcPreferenceFrameLayout;
    const v36, 0x10202d4

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->setId(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    invoke-virtual/range {v31 .. v31}, Landroid/preference/PreferenceFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    move-object/from16 v0, v36

    move/from16 v1, v35

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v36, v0

    if-eqz v36, :cond_7

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 759
    .end local v5           #HtcPrefs:Lcom/htc/preference/HtcPreferenceFrameLayout;
    .end local v31           #prefs:Landroid/preference/PreferenceFrameLayout;
    .end local v35           #x:I
    :cond_1a
    const v36, 0x10900c4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setContentView(I)V

    .line 760
    const v36, 0x10202d2

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/FrameLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 762
    const v36, 0x10202d4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 763
    new-instance v36, Lcom/htc/preference/HtcPreferenceManager;

    const/16 v37, 0x64

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 800
    .restart local v17       #headerParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v18       #headers:Landroid/widget/LinearLayout;
    .restart local v28       #margin:I
    :cond_1b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v36, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v38, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v39, v0

    move-object/from16 v0, v17

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 801
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 804
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 886
    .restart local v6       #backButton:Lcom/htc/widget/HtcFooterButton;
    .restart local v7       #buttonText:Ljava/lang/String;
    .restart local v8       #button_bar:Landroid/widget/RelativeLayout;
    .restart local v15       #footer:Lcom/htc/widget/HtcFooter;
    .restart local v27       #intent:Landroid/content/Intent;
    .restart local v29       #nextButton:Lcom/htc/widget/HtcFooterButton;
    .restart local v32       #skipButton:Lcom/htc/widget/HtcFooterButton;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 895
    :cond_1d
    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1173
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1175
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityDestroy()V

    .line 1178
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1261
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1262
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1263
    iget v5, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1264
    .local v5, titleRes:I
    iget v6, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1265
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 1266
    iget v5, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1267
    const/4 v6, 0x0

    .line 1269
    :cond_0
    iget-object v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1277
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1
    :goto_0
    return-void

    .line 1272
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0

    .line 1274
    :cond_3
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 950
    .local v0, preferMultiPane:Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1243
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1245
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1247
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V

    .line 1249
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1801
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1641
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1643
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1773
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1206
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v2, :cond_0

    .line 1207
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1208
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 1210
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 1211
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1212
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1221
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    return-void

    .line 1220
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 913
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 914
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 915
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 916
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 1182
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1184
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1185
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1186
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1188
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1189
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1194
    .end local v1           #index:I
    :cond_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v3, :cond_1

    .line 1195
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 1196
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v2, :cond_1

    .line 1197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1198
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1199
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1202
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1164
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1166
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityStop()V

    .line 1169
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1157
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/HtcFragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1393
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1702
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceManager;->setPreferences(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1703
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->postBindPreferences()V

    .line 1704
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1706
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1710
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1397
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1398
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1403
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1404
    return-void

    .line 1401
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1407
    if-eqz p1, :cond_2

    .line 1408
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1410
    .local v1, title:Ljava/lang/CharSequence;
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1413
    .local v0, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1414
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1415
    :cond_1
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1419
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1417
    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1351
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-nez v3, :cond_3

    .line 1352
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1355
    .local v0, crumbs:Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/HtcFragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    .line 1356
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1358
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-eqz v3, :cond_0

    .line 1359
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/app/HtcFragmentBreadCrumbs;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :cond_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-nez v3, :cond_2

    .line 1365
    if-eqz p1, :cond_1

    .line 1366
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1379
    :cond_1
    :goto_0
    return-void

    .line 1361
    :catch_0
    move-exception v1

    .line 1362
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1370
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/HtcFragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1371
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/HtcFragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1373
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/HtcFragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/HtcFragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1375
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3, v6}, Landroid/app/HtcFragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 1376
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/HtcFragmentBreadCrumbs;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1377
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1378
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v3, v2}, Landroid/app/HtcFragmentBreadCrumbs;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1563
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x10202d4

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1564
    if-eqz p2, :cond_0

    .line 1565
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1566
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1570
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1571
    return-void

    .line 1568
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1594
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1595
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1612
    :goto_0
    return-void

    .line 1597
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1598
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1599
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1601
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1602
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0x10202d4

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1603
    if-eqz p3, :cond_3

    .line 1604
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1608
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1609
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1610
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1605
    :cond_3
    if-eqz p4, :cond_2

    .line 1606
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1812
    const/4 v2, 0x0

    .line 1816
    .local v2, supported:Z
    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1818
    .local v1, senseVersion:F
    const v3, 0x40066666

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 1819
    const/4 v2, 0x1

    .line 1826
    .end local v1           #senseVersion:F
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1827
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->startQuickSearchBox()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    :goto_1
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1831
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1311
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1312
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1337
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/htc/preference/HtcPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1338
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 5
    .parameter "header"

    .prologue
    .line 1492
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-ne v2, p1, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1507
    :goto_0
    return-void

    .line 1498
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1500
    .local v1, direction:I
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1502
    .local v0, context:Landroid/content/Context;
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1505
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1474
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1476
    move-object v0, p0

    .line 1477
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_0

    .line 1478
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1479
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1481
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1483
    return-void
.end method
