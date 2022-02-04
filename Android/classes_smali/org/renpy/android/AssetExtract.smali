.class Lorg/renpy/android/AssetExtract;
.super Ljava/lang/Object;
.source "AssetExtract.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lorg/renpy/android/AssetExtract;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public extractTar(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "python"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_23
    iget-object v3, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    new-instance v3, Lorg/kamranzafar/jtar/TarInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Lorg/kamranzafar/jtar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_40} :catch_d0

    :catch_40
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->getNextEntry()Lorg/kamranzafar/jtar/TarEntry;

    move-result-object v4
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_c9

    if-nez v4, :cond_4e

    :try_start_46
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_4c

    :catch_4c
    const/4 p1, 0x1

    return p1

    :cond_4e
    invoke-virtual {v4}, Lorg/kamranzafar/jtar/TarEntry;->isDirectory()Z

    move-result v5

    const-string v6, "/"

    if-eqz v5, :cond_75

    :try_start_56
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_74} :catch_40

    goto :goto_40

    :cond_75
    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_8c
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_96} :catch_98
    .catch Ljava/lang/SecurityException; {:try_start_8c .. :try_end_96} :catch_98

    move-object v5, v6

    goto :goto_99

    :catch_98
    nop

    :goto_99
    if-nez v5, :cond_b0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not open "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-virtual {v3, v0}, Lorg/kamranzafar/jtar/TarInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_be

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_40

    :cond_be
    invoke-virtual {v5, v0, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c1} :catch_c2

    goto :goto_b0

    :catch_c2
    move-exception p1

    const-string p2, "extracting zip"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_c9
    move-exception p1

    const-string p2, "extracting tar"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_d0
    move-exception p1

    const-string p2, "opening up extract tar"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
