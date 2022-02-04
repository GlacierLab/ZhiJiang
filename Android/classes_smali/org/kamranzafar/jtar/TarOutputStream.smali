.class public Lorg/kamranzafar/jtar/TarOutputStream;
.super Ljava/io/OutputStream;
.source "TarOutputStream.java"


# instance fields
.field private bytesWritten:J

.field private currentEntry:Lorg/kamranzafar/jtar/TarEntry;

.field private currentFileSize:J

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    if-eqz p2, :cond_1a

    const-wide/16 p1, 0x400

    cmp-long v3, v1, p1

    if-lez v3, :cond_1a

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1a
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->closeCurrentEntry()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected closeCurrentEntry()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->pad()V

    goto :goto_49

    :cond_19
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current entry["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] of size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v2}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] has not been fully written."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    :goto_49
    return-void
.end method

.method protected pad()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v1, v0

    if-lez v1, :cond_15

    rsub-int v0, v1, 0x200

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    :cond_15
    return-void
.end method

.method public putNextEntry(Lorg/kamranzafar/jtar/TarEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarOutputStream;->closeCurrentEntry()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lorg/kamranzafar/jtar/TarEntry;->writeEntryHeader([B)V

    invoke-virtual {p0, v0}, Lorg/kamranzafar/jtar/TarOutputStream;->write([B)V

    iput-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    return-void
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    iget-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz p1, :cond_15

    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    :cond_15
    return-void
.end method

.method public write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-ltz v6, :cond_19

    goto :goto_54

    :cond_19
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The current entry["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {p3}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] size["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {p3}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] is smaller than the bytes["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    add-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] being written."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    :goto_54
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->bytesWritten:J

    iget-object p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz p1, :cond_68

    iget-wide p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/kamranzafar/jtar/TarOutputStream;->currentFileSize:J

    :cond_68
    return-void
.end method
