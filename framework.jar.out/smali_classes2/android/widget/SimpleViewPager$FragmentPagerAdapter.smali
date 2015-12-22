.class public abstract Landroid/widget/SimpleViewPager$FragmentPagerAdapter;
.super Landroid/widget/SimpleViewPager$PagerAdapter;
.source "SimpleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FragmentPagerAdapter"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Landroid/widget/SimpleViewPager;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleViewPager;Landroid/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->this$0:Landroid/widget/SimpleViewPager;

    invoke-direct {p0, p1}, Landroid/widget/SimpleViewPager$PagerAdapter;-><init>(Landroid/widget/SimpleViewPager;)V

    iput-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iput-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iput-object p2, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iget-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    iget-object v1, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    iput-object v0, p0, Landroid/widget/SimpleViewPager$FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method