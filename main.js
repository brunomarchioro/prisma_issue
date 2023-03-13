const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

(async () => {
  const newSite = await prisma.siteSample.create({
    data: {
      translatesFrom: ["ES"],
    },
  });

  console.log(newSite);
})();
